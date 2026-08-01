import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../../core/constants/app_colors.dart';

/// نتيجة رجوع البوابة.
typedef GatewayOutcome = ({bool paid, String? ref});

/// صفحة WebView لبوابة الدفع.
///
/// بترجّع `true` لو البوابة رجعت بنجاح، `false` لو رجعت بفشل صريح، و`null`
/// لو المستخدم قفل الصفحة (أو قفلها بعد ما فشلت في التحميل).
///
/// ⚠️ `null` **مش** معناها إن الدفع ما تمّش — البوابة ممكن تكون خلّصت والـ
/// webhook أكّد الدفعة والصفحة وقعت في رجوعها. اللي بيستدعي لازم يستطلع
/// `/status` قبل ما يعتبرها إلغاء (شوف [PaymentFlowCubit.cancel]).
class PaymentWebViewPage extends StatefulWidget {
  final String url;

  const PaymentWebViewPage({super.key, required this.url});

  @override
  State<PaymentWebViewPage> createState() => _PaymentWebViewPageState();
}

class _PaymentWebViewPageState extends State<PaymentWebViewPage> {
  late final WebViewController _controller;
  bool _loading = true;
  String? _error;

  /// رابط المستند الحالي في الإطار الرئيسي — بنقارن عليه أخطاء HTTP.
  late Uri _current;

  /// اتقفلت الصفحة بنتيجة خلاص — حرس ضد pop مرتين لو الحدث اتكرر.
  bool _closed = false;

  /// بوابة الدفع بترجّع أحيانًا رابط `http://` (Laravel بيولّد الروابط من
  /// `APP_URL` غير المشفّر)، والسيرفر نفسه بيعمل redirect لـ `https://`. لكن
  /// أندرويد (منذ API 28) و iOS (ATS) بيمنعوا الطلب **قبل** ما الـ redirect
  /// يحصل، فالصفحة بتقع بـ «App Transport Security». بنرقّي المخطط بنفسنا
  /// بدل ما نسمح بترافيك غير مشفّر — أأمن، ومطابق للوجهة اللي السيرفر
  /// بيوديها أصلًا.
  static Uri _secureUri(Uri uri) =>
      uri.scheme == 'http' ? uri.replace(scheme: 'https') : uri;

  @override
  void initState() {
    super.initState();
    _current = _secureUri(Uri.parse(widget.url));
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          // برضه بنفحص الـ callback هنا: الـ redirect اللي بييجي من السيرفر
          // مش مضمون إنه يعدّي على onNavigationRequest على كل المنصات.
          onPageStarted: (url) {
            if (_handleIfCallback(url)) return;
            if (!mounted) return;
            // ده المصدر الموثوق لرابط الإطار الرئيسي — بيتحدّث بعد أي redirect.
            _current = Uri.tryParse(url) ?? _current;
            setState(() => _loading = true);
          },
          onPageFinished: (_) {
            if (mounted) setState(() => _loading = false);
          },
          // بدون ده، أي فشل تحميل بيبان كشريط تحميل لا نهائي من غير أي سبب.
          onWebResourceError: (err) {
            if (!mounted || err.isForMainFrame == false) return;
            _fail(err.description);
          },
          onHttpError: (err) {
            if (!mounted) return;
            // بيتنادى للأصول الفرعية كمان (أيقونة/صورة/سكربت). من غير الفلتر
            // ده أي 404 على favicon كان بيبلّع صفحة الدفع كلها بشاشة خطأ.
            final failed = err.request?.uri;
            if (failed != null && !_isCurrentDocument(failed)) return;
            final status = err.response?.statusCode;
            if (status != null && status >= 400) _fail('HTTP $status');
          },
          onNavigationRequest: (req) {
            final uri = Uri.tryParse(req.url);
            if (uri == null) return NavigationDecision.navigate;

            final outcome = _readCallback(uri);
            if (outcome != null) {
              _close(outcome.paid);
              return NavigationDecision.prevent;
            }

            // نفس سبب [_secureUri] — بس للروابط اللي بتظهر أثناء المسار
            // (redirect بعد الدفع مثلًا) مش الرابط الأول بس.
            if (uri.scheme == 'http') {
              _load(uri);
              return NavigationDecision.prevent;
            }

            _current = uri;
            return NavigationDecision.navigate;
          },
        ),
      );
    _load(_current);
  }

  void _load(Uri uri) {
    _current = _secureUri(uri);
    _controller.loadRequest(_current);
  }

  bool _isCurrentDocument(Uri uri) =>
      uri.host == _current.host && uri.path == _current.path;

  void _fail(String message) {
    if (_closed) return;
    setState(() {
      _loading = false;
      _error = message;
    });
  }

  /// يقفل الصفحة برجوع البوابة لو الرابط ده هو الـ callback.
  bool _handleIfCallback(String rawUrl) {
    final uri = Uri.tryParse(rawUrl);
    if (uri == null) return false;
    final outcome = _readCallback(uri);
    if (outcome == null) return false;
    _close(outcome.paid);
    return true;
  }

  void _close(bool paid) {
    if (_closed || !mounted) return;
    _closed = true;
    Navigator.pop(context, paid);
  }

  /// يرصد رجوع البوابة.
  ///
  /// بعد BE-13 الرجوع بقى على مسار الـ API:
  /// `/api/v1/payments/callback?ref={payment_id}&decision=success|fail`
  /// (كان قبلها مسار الويب المحمي بجلسة، فالـ WebView كان بيقع على اللوجين).
  ///
  /// بنطابق على **نهاية المسار** مش على الثابت الكامل، فالاتنين بيتلقطوا —
  /// ده مهم لأن البوابة ممكن ترجّع على أي واحد منهم حسب اللي السيرفر بعته.
  ///
  /// بنقفل الصفحة من غير ما نسيبها تحمّل: الرد نفسه JSON، والتأكيد الرسمي
  /// بييجي من الـ webhook الموقّع + استطلاع `/status` بعد كده.
  ///
  /// الـ `ref` هنا هو `payment_id`، بينما إحنا بنستطلع بـ `ref` بتاع البوابة
  /// اللي رجع من بدء الدفع. الاتنين مقبولين على `/status` (BE-13)، فبنكمّل
  /// بالـ ref اللي معانا أصلًا وما نحتاجش نقرا اللي في الرابط.
  GatewayOutcome? _readCallback(Uri uri) {
    final path = uri.path;
    final looksLikeCallback =
        path.endsWith('/payments/callback') ||
        uri.queryParameters.containsKey('decision');
    if (!looksLikeCallback) return null;

    final decision = uri.queryParameters['decision'];
    return (
      // غياب decision مع مسار callback صحيح = نجاح (بعض البوابات لا ترسله).
      paid: decision == null || decision == 'success',
      ref: uri.queryParameters['ref'],
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.securePayment)),
      body: _error != null
          ? _ErrorState(
              message: _error!,
              url: _current.toString(),
              onRetry: () {
                setState(() {
                  _error = null;
                  _loading = true;
                });
                _load(Uri.parse(widget.url));
              },
            )
          : Stack(
              children: [
                WebViewWidget(controller: _controller),
                if (_loading) const LinearProgressIndicator(),
              ],
            ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  final String message;
  final String url;
  final VoidCallback onRetry;

  const _ErrorState({
    required this.message,
    required this.url,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.wifi_tethering_error,
              size: 46.sp,
              color: AppColors.danger,
            ),
            Gap(12.h),
            Text(
              t.paymentPageFailed,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            Gap(6.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.textSecondary,
                height: 1.5,
              ),
            ),
            Gap(4.h),
            // الرابط اللي وقع — بيوفّر تشخيص فوري لما البوابة ترجّع مسار غلط.
            Text(
              url,
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 9.sp, color: AppColors.textSecondary),
            ),
            Gap(16.h),
            OutlinedButton.icon(
              onPressed: onRetry,
              icon: Icon(Icons.refresh, size: 17.sp),
              label: Text(t.retry, style: TextStyle(fontSize: 12.sp)),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.border),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

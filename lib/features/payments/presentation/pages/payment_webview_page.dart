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
/// بترجّع `true` لو البوابة رجعت بنجاح، و`false`/`null` لو المستخدم قفل
/// الصفحة أو فشل الدفع.
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

  /// بوابة الدفع بترجّع أحيانًا رابط `http://` (Chargily في وضع الاختبار)،
  /// والسيرفر نفسه بيعمل redirect لـ `https://`. لكن أندرويد (منذ API 28)
  /// و iOS (ATS) بيمنعوا الطلب **قبل** ما الـ redirect يحصل، فالصفحة تفضل
  /// بتحمّل للأبد. بنرقّي المخطط بنفسنا بدل ما نسمح بترافيك غير مشفّر —
  /// أأمن، ومطابق للوجهة اللي السيرفر بيوديها أصلًا.
  static Uri _secureUri(String raw) {
    final uri = Uri.parse(raw);
    return uri.scheme == 'http' ? uri.replace(scheme: 'https') : uri;
  }

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) {
            if (mounted) setState(() => _loading = true);
          },
          onPageFinished: (_) {
            if (mounted) setState(() => _loading = false);
          },
          // بدون ده، أي فشل تحميل بيبان كشريط تحميل لا نهائي من غير أي سبب.
          onWebResourceError: (err) {
            if (!mounted || !err.isForMainFrame!) return;
            setState(() {
              _loading = false;
              _error = err.description;
            });
          },
          onHttpError: (err) {
            if (!mounted) return;
            final status = err.response?.statusCode;
            if (status != null && status >= 400) {
              setState(() {
                _loading = false;
                _error = 'HTTP $status';
              });
            }
          },
          onNavigationRequest: (req) {
            final outcome = _readCallback(req.url);
            if (outcome != null) {
              Navigator.pop(context, outcome.paid);
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(_secureUri(widget.url));
  }

  /// يرصد رجوع البوابة.
  ///
  /// البوابات بترجع على `/payments/callback?ref=…&decision=success|fail`.
  /// بنطابق على **مقطع المسار** مش على ثابت كامل، لأن الرابط اللي البوابة
  /// بترجع عليه هو مسار الويب (`/payments/callback`) مش مسار الـ API
  /// (`/api/v1/payments/callback`) — فالمطابقة على الثابت الكامل مبتشتغلش.
  GatewayOutcome? _readCallback(String rawUrl) {
    final uri = Uri.tryParse(rawUrl);
    if (uri == null) return null;

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
              onRetry: () {
                setState(() {
                  _error = null;
                  _loading = true;
                });
                _controller.loadRequest(_secureUri(widget.url));
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
  final VoidCallback onRetry;

  const _ErrorState({required this.message, required this.onRetry});

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

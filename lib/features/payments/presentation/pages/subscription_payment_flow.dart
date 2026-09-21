import 'package:flutter/material.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../domain/entities/payment_entities.dart';
import '../../domain/usecases/payments_usecases.dart';
import 'payment_webview_page.dart';

/// عدد وفاصل محاولات الاستطلاع بعد رجوع المستخدم من البوابة.
///
/// الدفعة بتتأكّد بـ webhook مستقل عن الـ WebView، فرجوع المستخدم مش دليل
/// على التأكيد. بنسأل السيرفر بضع مرات قبل ما نستسلم.
const _pollAttempts = 6;
const _pollInterval = Duration(seconds: 2);

/// منسّق دفع الاشتراك — تعديل العميل رقم 24.
///
/// أبسط من [PaymentFlow] بتاع المزايدات عن قصد: بوابة واحدة، من غير إقرار
/// شروط ولا خطوة تانية ولا إعادة توجيه للتوثيق — الاشتراك مالوش بوابات
/// KYC. بيشارك نفس الـ WebView ونفس استطلاع `payments/{ref}/status`.
class SubscriptionPaymentFlow {
  SubscriptionPaymentFlow._();

  /// يفتح البوابة ويستطلع النتيجة. بيرجّع `true` لو الدفع اتأكّد.
  static Future<bool> run(BuildContext context, PaymentInit init) async {
    final paid = await Navigator.of(context, rootNavigator: true).push<bool>(
      MaterialPageRoute(
        builder: (_) => PaymentWebViewPage(url: init.redirectUrl),
      ),
    );
    if (!context.mounted) return false;

    // حتى لو الـ WebView اتقفل بإلغاء، بنسأل السيرفر مرة: الـ webhook ممكن
    // يكون وصل قبل ما المستخدم يرجع.
    final confirmed = await _poll(
      init.ref,
      attempts: paid == true ? _pollAttempts : 1,
    );
    if (!context.mounted) return confirmed;

    if (!confirmed && paid == true) {
      final t = AppLocalizations.of(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t.paymentNotConfirmed),
          backgroundColor: AppColors.warning,
        ),
      );
    }
    return confirmed;
  }

  static Future<bool> _poll(String ref, {required int attempts}) async {
    final getStatus = getIt<GetPaymentStatus>();
    var pollRef = ref;

    for (var i = 0; i < attempts; i++) {
      final res = await getStatus(pollRef);
      final done = res.fold((_) => null, (status) {
        // نوحّد على المرجع الرسمي من البوابة لباقي المحاولات (BE-13).
        pollRef = status.pollRef;
        if (status.allConfirmed) return true;
        if (status.hasFailed) return false;
        return null; // لسه معلّقة
      });
      if (done != null) return done;
      if (i < attempts - 1) await Future<void>.delayed(_pollInterval);
    }
    return false;
  }
}

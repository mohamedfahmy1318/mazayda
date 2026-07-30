import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../auctions/domain/entities/auction.dart';
import '../cubit/payment_flow_cubit.dart';
import '../widgets/acknowledge_sheet.dart';
import 'payment_webview_page.dart';

/// منسّق flow الدفع — يُستدعى من أي مكان (تفاصيل المزاد / شاشة الفوز).
///
/// يفتح اشتراكًا واحدًا على الـ cubit يعيش طول الـ flow (قد يمرّ ببوابتين
/// متتاليتين: كراس الشروط ثم التسجيل)، ويفتح WebView لكل [PaymentOpenGateway]،
/// ثم يستطلع الحالة بعد رجوع كل واحدة، لحد ما يصل لحالة نهائية.
class PaymentFlow {
  /// flow التسجيل في المزاد: موافقة (bottom sheet) ← بوابة/بوابتين ← تأكيد.
  static Future<void> startRegistration(
    BuildContext context,
    Auction auction,
  ) async {
    final cubit = getIt<PaymentFlowCubit>();

    // 1) bottom sheet للموافقة على الشروط وعرض الرسوم — يرجّع true لو تابع.
    final proceed = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetCtx) => AcknowledgeSheet(
        auction: auction,
        onConfirm: () => Navigator.pop(sheetCtx, true),
      ),
    );

    // قفل الشيت بدون بدء الـ flow — لا ننتظر شيئًا معلّقًا.
    if (proceed != true || !context.mounted) {
      await cubit.close();
      return;
    }

    await _runFlow(
      context,
      cubit,
      () => cubit.startRegistration(auction.id, auction.hasBookAccess),
    );
  }

  /// flow الدفع النهائي للفائز — بوابة واحدة بدون sheet.
  static Future<void> startFinalPayment(
    BuildContext context,
    String auctionId,
  ) async {
    final cubit = getIt<PaymentFlowCubit>();
    await _runFlow(context, cubit, () => cubit.startFinalPayment(auctionId));
  }

  /// اشتراك واحد يعيش طول الـ flow لحد حالة نهائية (confirmed/failed).
  static Future<void> _runFlow(
    BuildContext context,
    PaymentFlowCubit cubit,
    Future<void> Function() start,
  ) async {
    final overlay = Overlay.of(context, rootOverlay: true);
    OverlayEntry? loader;
    void showLoader() {
      if (loader != null) return;
      loader = OverlayEntry(builder: (_) => const _FlowLoader());
      overlay.insert(loader!);
    }

    void hideLoader() {
      loader?.remove();
      loader = null;
    }

    final done = Completer<void>();

    final sub = cubit.stream.listen((state) async {
      switch (state) {
        case PaymentPreparing():
        case PaymentPolling():
          showLoader();
        case PaymentOpenGateway(:final url, :final ref):
          hideLoader();
          if (!context.mounted) {
            cubit.cancel();
            return;
          }
          // بوابة الدفع — WebView يرجّع true لو نجح الدفع، غير كده إلغاء.
          final paid = await Navigator.of(context, rootNavigator: true)
              .push<bool>(
                MaterialPageRoute(
                  builder: (_) => PaymentWebViewPage(url: url),
                ),
              );
          if (paid == true) {
            cubit.confirmAfterGateway(ref);
          } else {
            cubit.cancel();
          }
        case PaymentConfirmed():
          hideLoader();
          if (context.mounted) {
            _snack(context, _t(context).paymentSuccess, AppColors.success);
          }
          if (!done.isCompleted) done.complete();
        case PaymentAlreadySettled():
          hideLoader();
          if (context.mounted) {
            _snack(context, _t(context).paymentAlreadyDone, AppColors.info);
          }
          if (!done.isCompleted) done.complete();
        case PaymentFailed(:final message):
          // رسالة السيرفر مترجمة أصلًا من الباك.
          hideLoader();
          if (context.mounted) _snack(context, message, AppColors.danger);
          if (!done.isCompleted) done.complete();
        case PaymentIssue(:final issue):
          hideLoader();
          if (context.mounted) {
            _snack(context, _issueText(context, issue), AppColors.danger);
          }
          if (!done.isCompleted) done.complete();
        case PaymentIdle():
          break;
      }
    });

    await start();
    await done.future;
    hideLoader();
    await sub.cancel();
    await cubit.close();
  }

  static AppLocalizations _t(BuildContext ctx) => AppLocalizations.of(ctx);

  /// ترجمة أسباب التوقّف اللي بيولّدها العميل.
  static String _issueText(BuildContext ctx, PaymentFlowIssue issue) =>
      switch (issue) {
        PaymentFlowIssue.bookNotConfirmed => _t(ctx).paymentBookNotConfirmed,
        PaymentFlowIssue.paymentNotConfirmed => _t(ctx).paymentNotConfirmed,
        PaymentFlowIssue.cancelled => _t(ctx).paymentCancelled,
      };

  static void _snack(BuildContext ctx, String msg, Color color) {
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: color),
    );
  }
}

/// طبقة تحميل معتمة تغطّي الشاشة أثناء تحضير الدفع أو استطلاع الحالة.
class _FlowLoader extends StatelessWidget {
  const _FlowLoader();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {},
        child: const ColoredBox(
          color: Color(0x66000000),
          child: Center(child: CircularProgressIndicator(color: Colors.white)),
        ),
      ),
    );
  }
}

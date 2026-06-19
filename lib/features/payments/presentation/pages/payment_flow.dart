import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../auctions/domain/entities/auction.dart';
import '../cubit/payment_flow_cubit.dart';
import '../widgets/acknowledge_sheet.dart';
import 'payment_webview_page.dart';

/// منسّق flow الدفع — يُستدعى من أي مكان (تفاصيل المزاد / شاشة الفوز).
/// [isFinalPayment] لو true يبدأ الدفع النهائي، غير كده التسجيل في المزاد.
class PaymentFlow {
  /// يبدأ flow التسجيل في المزاد (acknowledge → register → بوابة → استطلاع).
  static Future<void> startRegistration(
    BuildContext context,
    Auction auction,
  ) async {
    final cubit = getIt<PaymentFlowCubit>();

    // 1) bottom sheet لإقرار كراس الشروط
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetCtx) => BlocProvider.value(
        value: cubit,
        child: BlocConsumer<PaymentFlowCubit, PaymentFlowState>(
          listener: (ctx, state) => _handle(context, sheetCtx, cubit, state),
          builder: (ctx, state) => AcknowledgeSheet(
            auction: auction,
            isLoading: state is PaymentPreparing,
            onConfirm: () => cubit.startRegistration(auction.id),
          ),
        ),
      ),
    );
  }

  /// يبدأ flow الدفع النهائي للفائز (بدون sheet إقرار).
  static Future<void> startFinalPayment(
    BuildContext context,
    String auctionId,
  ) async {
    final cubit = getIt<PaymentFlowCubit>();
    final sub = cubit.stream.listen((state) {
      if (!context.mounted) return;
      _handle(context, null, cubit, state);
    });
    await cubit.startFinalPayment(auctionId);
    await sub.cancel();
  }

  /// معالجة انتقالات الـ flow: فتح البوابة، النجاح، الفشل.
  static Future<void> _handle(
    BuildContext rootCtx,
    BuildContext? sheetCtx,
    PaymentFlowCubit cubit,
    PaymentFlowState state,
  ) async {
    switch (state) {
      case PaymentOpenGateway(:final url, :final ref):
        // اقفل الـ sheet لو مفتوح
        if (sheetCtx != null && Navigator.canPop(sheetCtx)) {
          Navigator.pop(sheetCtx);
        }
        // افتح WebView البوابة
        final success = await Navigator.push<bool>(
          rootCtx,
          MaterialPageRoute(
            builder: (_) => PaymentWebViewPage(url: url),
          ),
        );
        if (success == true) {
          await cubit.confirmAfterGateway(ref);
        } else if (rootCtx.mounted) {
          _snack(rootCtx, 'تم إلغاء الدفع', AppColors.danger);
        }
      case PaymentConfirmed():
        _snack(rootCtx, 'تم الدفع بنجاح', AppColors.success);
      case PaymentFailed(:final message):
        _snack(rootCtx, message, AppColors.danger);
      default:
        break;
    }
  }

  static void _snack(BuildContext ctx, String msg, Color color) {
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: color),
    );
  }
}

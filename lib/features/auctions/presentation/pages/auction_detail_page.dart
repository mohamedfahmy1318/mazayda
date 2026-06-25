import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_image.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/auction.dart';
import '../cubit/auction_detail_cubit.dart';
import '../../../payments/presentation/pages/payment_flow.dart';

/// صفحة تفاصيل المزاد — بتاخد الـ id وتحمّل التفاصيل.
class AuctionDetailPage extends StatelessWidget {
  final String auctionId;
  const AuctionDetailPage({super.key, required this.auctionId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuctionDetailCubit>()..load(auctionId),
      child: Scaffold(
        body: BlocBuilder<AuctionDetailCubit, AuctionDetailState>(
          builder: (context, state) {
            return switch (state) {
              AuctionDetailInitial() ||
              AuctionDetailLoading() => const LoadingView(),
              AuctionDetailError(:final message) => ErrorView(
                message: message,
                onRetry: () =>
                    context.read<AuctionDetailCubit>().load(auctionId),
              ),
              AuctionDetailLoaded(:final auction) => _DetailContent(
                auction: auction,
              ),
            };
          },
        ),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  final Auction auction;
  const _DetailContent({required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // الصورة + زر الرجوع
              Stack(
                children: [
                  SizedBox(
                    height: 200.h,
                    width: double.infinity,
                    child: AppImage(
                      url: auction.coverPhotoUrl,
                      height: 200.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      fallbackIcon: Icons.gavel,
                    ),
                  ),
                  Positioned(
                    // ننزل الزر أسفل شريط الحالة حتى لا يكون جزء منه خلفه (غير قابل للمس)
                    top: MediaQuery.of(context).padding.top + 8.h,
                    right: 14.w,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      child: IconButton(
                        // زر رجوع — يشير "للخلف" حسب اتجاه اللغة
                        // (RTL: لليمين/forward، LTR: لليسار/back).
                        icon: Icon(
                          isRtl ? Icons.arrow_forward : Icons.arrow_back,
                          color: AppColors.primary,
                        ),
                        onPressed: () {
                          if (context.canPop()) {
                            context.pop();
                          } else {
                            context.go(Routes.home);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // الفئة + الجهة
                    Wrap(
                      spacing: 6.w,
                      children: [
                        if (auction.category != null)
                          _tag(
                            auction.category!.name,
                            AppColors.success,
                            AppColors.successBg,
                          ),
                        if (auction.entity != null)
                          _tag(
                            auction.entity!.name,
                            AppColors.info,
                            AppColors.infoBg,
                          ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      auction.title,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    if (auction.assetLocation != null) ...[
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15.sp,
                            color: AppColors.textSecondary,
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: Text(
                              auction.assetLocation!,
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    SizedBox(height: 14.h),
                    // بطاقتا السعر
                    Row(
                      children: [
                        Expanded(
                          child: _priceCard(
                            t.currentPrice,
                            auction.currentPrice.formatted,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: _priceCard(
                            t.depositRequired,
                            auction.depositAmount.formatted,
                          ),
                        ),
                      ],
                    ),
                    if (auction.description != null) ...[
                      SizedBox(height: 16.h),
                      Text(
                        t.description,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        auction.description!,
                        style: TextStyle(
                          fontSize: 13.sp,
                          height: 1.6,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        // الزرار السفلي
        if (auction.isBiddable)
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: const BoxDecoration(
              color: AppColors.background,
              border: Border(
                top: BorderSide(color: AppColors.border, width: 0.5),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    label: t.registerAndPay,
                    icon: Icons.app_registration,
                    outlined: true,
                    onPressed: () =>
                        PaymentFlow.startRegistration(context, auction),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: PrimaryButton(
                    label: t.bid,
                    icon: Icons.gavel,
                    onPressed: () {
                      context.push(
                        '${Routes.liveBidding}/${auction.id}',
                        extra: {'title': auction.title},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _tag(String text, Color fg, Color bg) => Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
    decoration: BoxDecoration(
      color: bg,
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500, color: fg),
    ),
  );

  Widget _priceCard(String label, String value) => Container(
    padding: EdgeInsets.all(12.w),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(color: AppColors.border, width: 0.5),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 11.sp, color: AppColors.textSecondary),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
      ],
    ),
  );
}

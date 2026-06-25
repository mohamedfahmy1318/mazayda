import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
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

/// ارتفاع صورة الغلاف في صفحة التفاصيل.
const _coverHeight = 200.0;

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
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _DetailHeaderImage(coverPhotoUrl: auction.coverPhotoUrl),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: _DetailInfo(auction: auction),
              ),
            ],
          ),
        ),
        if (auction.isBiddable) _DetailActionBar(auction: auction),
      ],
    );
  }
}

/// صورة الغلاف + زر الرجوع العائم.
class _DetailHeaderImage extends StatelessWidget {
  final String? coverPhotoUrl;
  const _DetailHeaderImage({required this.coverPhotoUrl});

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Stack(
      children: [
        SizedBox(
          height: _coverHeight.h,
          width: double.infinity,
          child: AppImage(
            url: coverPhotoUrl,
            height: _coverHeight.h,
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
    );
  }
}

/// كتلة المعلومات أسفل الصورة: الوسوم + العنوان + الموقع + الأسعار + الوصف.
class _DetailInfo extends StatelessWidget {
  final Auction auction;
  const _DetailInfo({required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 6.w,
          children: [
            if (auction.category != null)
              _DetailTag(
                text: auction.category!.name,
                fg: AppColors.success,
                bg: AppColors.successBg,
              ),
            if (auction.entity != null)
              _DetailTag(
                text: auction.entity!.name,
                fg: AppColors.info,
                bg: AppColors.infoBg,
              ),
          ],
        ),
        Gap(8.h),
        Text(
          auction.title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        if (auction.assetLocation != null) ...[
          Gap(4.h),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 15.sp,
                color: AppColors.textSecondary,
              ),
              Gap(4.w),
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
        Gap(14.h),
        Row(
          children: [
            Expanded(
              child: _DetailPriceCard(
                label: t.currentPrice,
                value: auction.currentPrice.formatted,
              ),
            ),
            Gap(10.w),
            Expanded(
              child: _DetailPriceCard(
                label: t.depositRequired,
                value: auction.depositAmount.formatted,
              ),
            ),
          ],
        ),
        if (auction.description != null) ...[
          Gap(16.h),
          Text(
            t.description,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          ),
          Gap(6.h),
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
    );
  }
}

/// وسم الفئة / الجهة.
class _DetailTag extends StatelessWidget {
  final String text;
  final Color fg;
  final Color bg;
  const _DetailTag({required this.text, required this.fg, required this.bg});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: fg,
        ),
      ),
    );
  }
}

/// بطاقة سعر (السعر الحالي / مبلغ التأمين).
class _DetailPriceCard extends StatelessWidget {
  final String label;
  final String value;
  const _DetailPriceCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Gap(4.h),
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
}

/// الشريط السفلي: تسجيل ودفع + مزايدة.
class _DetailActionBar extends StatelessWidget {
  final Auction auction;
  const _DetailActionBar({required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(top: BorderSide(color: AppColors.border, width: 0.5)),
      ),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              label: t.registerAndPay,
              icon: Icons.app_registration,
              outlined: true,
              onPressed: () => PaymentFlow.startRegistration(context, auction),
            ),
          ),
          Gap(10.w),
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
    );
  }
}

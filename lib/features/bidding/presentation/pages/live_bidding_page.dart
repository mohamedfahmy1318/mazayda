import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/bid_entities.dart';
import '../cubit/bidding_cubit.dart';
import '../widgets/bid_controls.dart';
import '../widgets/bid_row.dart';
import '../widgets/live_price_card.dart';

class LiveBiddingPage extends StatelessWidget {
  final String auctionId;
  final String title;

  const LiveBiddingPage({
    super.key,
    required this.auctionId,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BiddingCubit>()..start(auctionId),
      child: _LiveBiddingView(title: title),
    );
  }
}

class _LiveBiddingView extends StatelessWidget {
  final String title;
  const _LiveBiddingView({required this.title});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: BlocConsumer<BiddingCubit, BiddingState>(
        listenWhen: (p, c) => c.bidError != null && p.bidError != c.bidError,
        listener: (context, state) {
          if (state.bidError != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.bidError!),
                backgroundColor: AppColors.danger,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.loading) return const LoadingView();
          final cubit = context.read<BiddingCubit>();
          final canBid = state.isBiddable && !state.hasEnded;

          // الصفحة كلها بتتمرّر: الكارت طويل (سعر + عدّاد + أدوات) والكيبورد
          // بيقفل نص الشاشة وقت إدخال المبلغ.
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: LiveBidPanel(
                  isActive: canBid,
                  currentPrice: state.currentPrice,
                  currentPriceFormatted: state.currentPriceFormatted,
                  bidCount: state.bidCount,
                  endTime: state.endTime,
                  onCountdownFinished: cubit.refresh,
                  controls: canBid
                      ? BidControls(
                          currentPrice: state.currentPrice,
                          placingBid: state.placingBid,
                          onPlaceBid: cubit.placeBid,
                        )
                      : null,
                ),
              ),
              if (!canBid)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: _ClosedNotice(message: t.biddingClosed),
                  ),
                ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(16.w, 18.h, 16.w, 8.h),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    t.bidHistory,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              if (state.bids.isEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 32.h),
                    child: EmptyView(message: t.noBidsYet, icon: Icons.gavel),
                  ),
                )
              else
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 24.h),
                  sliver: _BidHistorySliver(bids: state.bids),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// سجل المزايدات كـ sliver — نفس صفوف [BidRow] بنفس أنيميشن الدخول.
class _BidHistorySliver extends StatelessWidget {
  final List<BidEntry> bids;
  const _BidHistorySliver({required this.bids});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: bids.length,
      itemBuilder: (_, i) => BidRow(bid: bids[i], highlighted: i == 0)
          .animate()
          .fadeIn(duration: 250.ms)
          .slideY(begin: 0.08, end: 0, curve: Curves.easeOut),
    );
  }
}

/// المزايدة مقفولة — بديل واضح بدل ما الأدوات تختفي من غير سبب.
class _ClosedNotice extends StatelessWidget {
  final String message;
  const _ClosedNotice({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
      decoration: BoxDecoration(
        color: AppColors.neutralBg,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Icon(Icons.lock_clock, size: 17.sp, color: AppColors.neutral),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              message,
              style: TextStyle(fontSize: 12.sp, color: AppColors.neutral),
            ),
          ),
        ],
      ),
    );
  }
}

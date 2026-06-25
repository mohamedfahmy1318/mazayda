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

          return Column(
            children: [
              LivePriceCard(
                isLive: state.isLive,
                currentPrice: state.currentPrice,
                currentPriceFormatted: state.currentPriceFormatted,
                bidCount: state.bidCount,
              ),
              Expanded(child: _BidHistory(bids: state.bids)),
              if (state.isBiddable && !state.hasEnded)
                BidControls(
                  currentPrice: state.currentPrice,
                  placingBid: state.placingBid,
                  onPlaceBid: cubit.placeBid,
                ),
            ],
          );
        },
      ),
    );
  }
}

/// سجل المزايدات — عنوان + قائمة الصفوف أو حالة فارغة.
class _BidHistory extends StatelessWidget {
  final List<BidEntry> bids;
  const _BidHistory({required this.bids});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.bidHistory,
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: bids.isEmpty
                ? EmptyView(message: t.noBidsYet, icon: Icons.gavel)
                : ListView.builder(
                    itemCount: bids.length,
                    itemBuilder: (_, i) =>
                        BidRow(bid: bids[i], highlighted: i == 0)
                            .animate()
                            .fadeIn(duration: 250.ms)
                            .slideY(begin: 0.08, end: 0, curve: Curves.easeOut),
                  ),
          ),
        ],
      ),
    );
  }
}

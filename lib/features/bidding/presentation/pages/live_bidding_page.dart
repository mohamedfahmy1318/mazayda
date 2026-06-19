import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../cubit/bidding_cubit.dart';
import '../widgets/bid_row.dart';

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

class _LiveBiddingView extends StatefulWidget {
  final String title;
  const _LiveBiddingView({required this.title});
  @override
  State<_LiveBiddingView> createState() => _LiveBiddingViewState();
}

class _LiveBiddingViewState extends State<_LiveBiddingView> {
  int _step = 50000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
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
              // السعر الحي
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(16.w),
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.border, width: 0.5),
                ),
                child: Column(
                  children: [
                    // مؤشّر "مباشر" — يظهر عند الاتصال بالـ realtime
                    if (state.isLive)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 7.w,
                            height: 7.w,
                            decoration: const BoxDecoration(
                              color: AppColors.danger,
                              shape: BoxShape.circle,
                            ),
                          )
                              .animate(onPlay: (c) => c.repeat(reverse: true))
                              .fadeIn(duration: 700.ms)
                              .then()
                              .fadeOut(duration: 700.ms),
                          SizedBox(width: 5.w),
                          Text('مباشر',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.danger)),
                        ],
                      ),
                    if (state.isLive) SizedBox(height: 6.h),
                    Text('أعلى مزايدة حالية',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.textSecondary)),
                    SizedBox(height: 4.h),
                    Text(
                      state.currentPriceFormatted.isEmpty
                          ? '—'
                          : state.currentPriceFormatted,
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ).animate(key: ValueKey(state.currentPrice)).scale(
                          duration: 250.ms,
                          begin: const Offset(1.08, 1.08),
                          end: const Offset(1, 1),
                        ),
                    SizedBox(height: 6.h),
                    Text('${state.bidCount} مزايدة',
                        style: TextStyle(
                            fontSize: 12.sp, color: AppColors.success)),
                  ],
                ),
              ),

              // السجل
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('سجل المزايدات',
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 10.h),
                      Expanded(
                        child: state.bids.isEmpty
                            ? const EmptyView(
                                message: 'لا توجد مزايدات بعد',
                                icon: Icons.gavel)
                            : ListView.builder(
                                itemCount: state.bids.length,
                                itemBuilder: (_, i) => BidRow(
                                  bid: state.bids[i],
                                  highlighted: i == 0,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),

              // أدوات المزايدة
              if (state.isBiddable && !state.hasEnded)
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: const BoxDecoration(
                    color: AppColors.background,
                    border: Border(
                        top: BorderSide(
                            color: AppColors.border, width: 0.5)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          _stepBtn(50000),
                          SizedBox(width: 8.w),
                          _stepBtn(100000),
                          SizedBox(width: 8.w),
                          _stepBtn(250000),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      PrimaryButton(
                        label:
                            'زايد بـ ${_format(state.currentPrice + _step)} دج',
                        icon: Icons.gavel,
                        isLoading: state.placingBid,
                        onPressed: () =>
                            cubit.placeBid(state.currentPrice + _step),
                      ),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _stepBtn(int value) {
    final selected = _step == value;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => _step = value),
        child: Container(
          height: 38.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(11.r),
            border: Border.all(color: AppColors.primary, width: 0.5),
          ),
          child: Text(
            '+${_format(value)}',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: selected ? Colors.white : AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }

  String _format(int n) {
    final s = n.toString();
    final buf = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buf.write(',');
      buf.write(s[i]);
    }
    return buf.toString();
  }
}

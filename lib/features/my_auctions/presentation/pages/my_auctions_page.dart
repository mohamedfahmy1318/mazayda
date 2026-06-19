import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/participation.dart';
import '../cubit/my_auctions_cubit.dart';
import '../widgets/participation_card.dart';

class MyAuctionsPage extends StatelessWidget {
  const MyAuctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MyAuctionsCubit>()..load(),
      child: const _MyAuctionsView(),
    );
  }
}

class _MyAuctionsView extends StatelessWidget {
  const _MyAuctionsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مزايداتي')),
      body: BlocBuilder<MyAuctionsCubit, MyAuctionsState>(
        builder: (context, state) {
          final cubit = context.read<MyAuctionsCubit>();
          return Column(
            children: [
              // التبويبات (chips)
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: MyAuctionTab.values.map((tab) {
                      final selected = state.tab == tab;
                      return Padding(
                        padding: EdgeInsets.only(left: 7.w),
                        child: GestureDetector(
                          onTap: () => cubit.changeTab(tab),
                          child: Container(
                            height: 36.h,
                            padding:
                                EdgeInsets.symmetric(horizontal: 16.w),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: selected
                                  ? AppColors.primary
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(
                                color: selected
                                    ? AppColors.primary
                                    : AppColors.borderStrong,
                                width: 0.5,
                              ),
                            ),
                            child: Text(
                              tab.labelAr,
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: selected
                                    ? Colors.white
                                    : AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              // المحتوى
              Expanded(child: _content(context, state)),
            ],
          );
        },
      ),
    );
  }

  Widget _content(BuildContext context, MyAuctionsState state) {
    if (state.loading) return const LoadingView();
    if (state.error != null) {
      return ErrorView(
        message: state.error!,
        onRetry: () => context.read<MyAuctionsCubit>().load(),
      );
    }
    if (state.items.isEmpty) {
      return EmptyView(message: _emptyMsg(state.tab));
    }
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      itemCount: state.items.length,
      itemBuilder: (_, i) {
        final item = state.items[i];
        return ParticipationCard(
          item: item,
          onTap: () =>
              context.push('${Routes.auctionDetail}/${item.auctionId}'),
        );
      },
    );
  }

  String _emptyMsg(MyAuctionTab tab) => switch (tab) {
        MyAuctionTab.active => 'لا توجد مزادات نشطة',
        MyAuctionTab.won => 'لم تربح أي مزاد بعد',
        MyAuctionTab.lost => 'لا توجد مزادات خاسرة',
        MyAuctionTab.upcoming => 'لا توجد مزادات قادمة',
      };
}

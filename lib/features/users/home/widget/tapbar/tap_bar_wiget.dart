import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/users/home/widget/tapbar/custom_tab_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicator: const CustomTabIndicator(color: ColorManger.buttonColor),
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        Padding(
          padding:
              EdgeInsets.only(top: 10.h, bottom: 10.h, right: 5.w, left: 5.w),
          child: Row(
            children: [
              Text(
                " (15) ",
                style: TextStyle(fontSize: 10.sp),
              ),
              Text(
                StringsManger.live,
                style: TextStyle(fontSize: 12.sp),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                " (92) ",
                style: TextStyle(fontSize: 10.sp),
              ),
              Text(
                StringsManger.exited,
                style: TextStyle(fontSize: 12.sp),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                " (50) ",
                style: TextStyle(fontSize: 10.sp),
              ),
              Text(
                StringsManger.funded,
                style: TextStyle(fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

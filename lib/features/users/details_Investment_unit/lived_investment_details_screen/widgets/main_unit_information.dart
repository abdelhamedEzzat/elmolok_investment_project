import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/features/users/home/widget/hashtag_for_unit.dart';
import 'package:elmolak_investment_app/features/users/home/widget/live_tap_widget/chart_of_funded.dart';
import 'package:elmolak_investment_app/features/users/home/widget/tapbar/title_for_unit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainUnitInformation extends StatelessWidget {
  const MainUnitInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      padding: EdgeInsets.only(bottom: 10.h),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: ColorManger.buttonColor, blurRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 10.h),
          const HashTagForUnit(),
          SizedBox(height: 5.h),
          const TitleForUnit(
            unitTitle: "استوديو في برج سنتر بارك ,دبي",
          ),
          const SubTitleOFUnit(),
          SizedBox(height: 10.h),
          const ChartOfFunded(),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              "المدة المتبقية 36 يوم",
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class SubTitleOFUnit extends StatelessWidget {
  const SubTitleOFUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "دبي - برج سنتر بارك",
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(Icons.flag, size: 10.sp),
        ],
      ),
    );
  }
}

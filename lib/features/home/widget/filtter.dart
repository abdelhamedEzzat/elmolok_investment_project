import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FillterWidget extends StatelessWidget {
  const FillterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                //offset: const Offset(0, 4),
                color: ColorManger.appBarColor.withOpacity(0.3))
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.sort,
            size: 16.sp,
          ),
          Text(
            StringsManger.sortBy,
            style: TextStyle(fontSize: 12.sp),
          )
        ],
      ),
    );
  }
}

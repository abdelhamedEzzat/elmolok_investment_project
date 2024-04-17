import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainIconInDetailsScreen extends StatelessWidget {
  const MainIconInDetailsScreen({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, right: 30.w),
          child: Icon(
            icon,
            color: ColorManger.buttonColor,
            size: 60.h,
          ),
        ),
      ),
    );
  }
}

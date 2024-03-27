import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipBotton extends StatelessWidget {
  const SkipBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 35,
      right: 0,
      top: 45,
      child: GestureDetector(
        child: Text(
          StringsManger.skip,
          style: TextStyle(
            color: ColorManger.skipbuttonColor,
            fontSize: 14.w,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

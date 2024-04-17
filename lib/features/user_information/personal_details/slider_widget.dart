import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidersWidget extends StatelessWidget {
  const SlidersWidget({
    super.key,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.color5,
  });
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: color1 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg)),
          width: MediaQuery.of(context).size.width / 6.w,
          height: 4.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: color2 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg)),
          width: MediaQuery.of(context).size.width / 6.w,
          height: 4.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: color3 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg)),
          width: MediaQuery.of(context).size.width / 6.w,
          height: 4.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: color4 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg)),
          width: MediaQuery.of(context).size.width / 6.w,
          height: 4.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: color5 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg)),
          width: MediaQuery.of(context).size.width / 6.w,
          height: 4.h,
        ),
      ],
    );
  }
}

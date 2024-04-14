import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidersWidget extends StatelessWidget {
  const SlidersWidget({
    super.key,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.color5,
    this.colors,
  });

  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 25.h,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            decoration: BoxDecoration(
              color: color1 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg),
            ),
            height: 4.h,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            decoration: BoxDecoration(
              color: color2 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg),
            ),
            height: 4.h,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            decoration: BoxDecoration(
              color: color3 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg),
            ),
            height: 4.h,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            decoration: BoxDecoration(
              color: color4 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg),
            ),
            height: 4.h,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            decoration: BoxDecoration(
              color: color5 ?? ColorManger.buttonColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(7.dg),
            ),
            height: 4.h,
          ),
        ),
        ...(colors ?? []).map((color) {
          return colors!.isNotEmpty
              ? Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(7.dg),
                    ),
                    height: 4.h,
                  ),
                )
              : Container();
        }),
      ],
    );
  }
}

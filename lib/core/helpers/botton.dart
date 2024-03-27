// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';

class BottonClick extends StatelessWidget {
  const BottonClick(
      {super.key,
      required this.alignment,
      required this.width,
      required this.onTap,
      required this.text});
  final double width;
  final void Function()? onTap;
  final AlignmentGeometry? alignment;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: alignment,
          margin: const EdgeInsets.only(right: 25, left: 25),
          decoration: const BoxDecoration(color: ColorManger.buttonColor),
          width: width,
          height: 50.h,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.w,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ));
  }
}

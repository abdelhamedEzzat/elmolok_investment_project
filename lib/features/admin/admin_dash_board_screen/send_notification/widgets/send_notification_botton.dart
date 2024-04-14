import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonNotification extends StatelessWidget {
  const ButtonNotification({
    super.key,
    required this.icons,
    required this.title,
    required this.containerColor,
  });
  final IconData icons;

  final String title;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 150.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: containerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icons,
            size: 30.w,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}

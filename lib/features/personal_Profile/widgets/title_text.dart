import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.titleText,
  });
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.w),
      alignment: Alignment.centerRight,
      child: Text(
        titleText,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 10.w),
      ),
    );
  }
}

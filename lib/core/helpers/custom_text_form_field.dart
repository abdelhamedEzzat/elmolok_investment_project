import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14.w),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}

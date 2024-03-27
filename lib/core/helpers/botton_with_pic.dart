// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PictureBottonClick extends StatelessWidget {
  const PictureBottonClick(
      {super.key,
      required this.alignment,
      required this.width,
      required this.onTap,
      required this.text,
      required this.color,
      required this.iconImage});
  final double width;
  final void Function()? onTap;
  final AlignmentGeometry? alignment;
  final String text;
  final Color color;
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: alignment,
          margin: const EdgeInsets.only(right: 25, left: 25),
          decoration: BoxDecoration(
              color: color, border: Border.all(color: Colors.grey, width: 1.1)),
          width: width,
          height: 50.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.w,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 10.w,
              ),
              Image.asset(
                iconImage,
                height: 30.h,
              ),
            ],
          ),
        ));
  }
}

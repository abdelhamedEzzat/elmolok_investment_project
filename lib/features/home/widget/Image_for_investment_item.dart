import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageForHomeItemInvestment extends StatelessWidget {
  const ImageForHomeItemInvestment({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8.w)),
      child: Image.asset(
        width: MediaQuery.of(context).size.width,
        height: 150.h,
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}

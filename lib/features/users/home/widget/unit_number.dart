import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitNumber extends StatelessWidget {
  const UnitNumber({
    super.key,
    required this.unitNum,
  });
  final String unitNum;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
          margin: const EdgeInsets.all(15),
          height: 24.h,
          width: 140.w,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 4.w, left: 15.w),
            child: Text(
              unitNum,
              style: TextStyle(color: Colors.white, fontSize: 12.sp),
            ),
          )),
    );
  }
}

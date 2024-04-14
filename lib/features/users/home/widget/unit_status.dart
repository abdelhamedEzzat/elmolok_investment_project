import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitStatus extends StatelessWidget {
  const UnitStatus({
    super.key,
    required this.unitStat,
  });
  final String unitStat;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
          margin: const EdgeInsets.all(15),
          height: 24.h,
          width: 70.w,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(15))),
          child: Padding(
            padding: EdgeInsets.only(top: 4.w, left: 20.w),
            child: Text(
              unitStat,
              style: TextStyle(color: Colors.black, fontSize: 12.sp),
            ),
          )),
    );
  }
}

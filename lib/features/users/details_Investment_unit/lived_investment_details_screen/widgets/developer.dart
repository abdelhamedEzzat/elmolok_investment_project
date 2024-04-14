import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      padding:
          EdgeInsets.only(bottom: 10.h, top: 10.h, right: 20.w, left: 20.w),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: ColorManger.buttonColor, blurRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "المطور & المدير للعقار",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "ديار للتطوير",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

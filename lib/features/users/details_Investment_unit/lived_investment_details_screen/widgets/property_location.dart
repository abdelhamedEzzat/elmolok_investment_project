import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyLocation extends StatelessWidget {
  const PropertyLocation({super.key});

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
              StringsManger.propertyLocation,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "دبي , الامارات",
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/location.PNG"))),
        ],
      ),
    );
  }
}

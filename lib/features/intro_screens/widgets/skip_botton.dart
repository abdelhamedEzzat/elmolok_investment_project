import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipBotton extends StatelessWidget {
  const SkipBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 30.w, top: 10),
                child: Text(
                  StringsManger.skip,
                  style: TextStyle(
                    color: ColorManger.skipbuttonColor,
                    fontSize: 14.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
          //  ),
        ),
      ),
    );
  }
}

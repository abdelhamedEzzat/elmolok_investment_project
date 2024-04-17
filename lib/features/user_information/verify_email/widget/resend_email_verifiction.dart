import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResendEmailVerification extends StatelessWidget {
  const ResendEmailVerification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        StringsManger.resendVerifyMassage,
        style: TextStyle(
            color: ColorManger.buttonColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

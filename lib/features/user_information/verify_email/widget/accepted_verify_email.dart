import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/user_information/widget/main_icon_detatils_screen.dart';
import 'package:elmolak_investment_app/features/user_information/verify_email/widget/resend_email_verifiction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcceptedVerifyEmail extends StatelessWidget {
  const AcceptedVerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const BackButton(),
            ),
            const MainIconInDetailsScreen(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          StringsManger.sendVerifyMassage,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
        ),
        Text(
          StringsManger.pleaseVerifyYourAccount,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
        ),
        Text(
          StringsManger.verifyEmailAndPressNext,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          StringsManger.ifVerifyMassageNotSend,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 4.h,
        ),
        const ResendEmailVerification(),
      ],
    );
  }
}

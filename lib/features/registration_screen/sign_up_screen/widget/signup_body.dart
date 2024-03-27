import 'package:elmolak_investment_app/core/constans/image/images_manager.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/core/strings/strings.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/if_have_account.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_apple.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_email.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 25.h,
            right: 25.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImagesManager.appLogo,
                width: 150.w,
              ),
              Text(
                StringManager.appName,
                style: TextStyle(fontSize: 30.w, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Text(
          StringsManger.signUp,
          style: TextStyle(fontSize: 24.sp),
        ),
        SizedBox(
          height: 25.h,
        ),
        const CustomTextFormField(
          hintText: StringsManger.emailAddress,
        ),
        SizedBox(
          height: 10.h,
        ),
        const CustomTextFormField(
          hintText: StringsManger.password,
        ),
        SizedBox(
          height: 20.h,
        ),
        const SignUpWithEmail(),
        SizedBox(
          height: 10.h,
        ),
        //
        //
        const IfYouHaveAccount(),
        //
        //
        SizedBox(
          height: 10.h,
        ),
        //
        //
        Text(
          StringsManger.or,
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        //
        //
        const SignInWithGoogle(),
        SizedBox(
          height: 10.h,
        ),
        //
        //
        const SignInWithApple(),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}

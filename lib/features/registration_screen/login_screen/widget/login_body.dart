import 'package:elmolak_investment_app/core/constans/image/images_manager.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/core/strings/strings.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/controller/email_login/email_login_cubit.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/widget/forget_password.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/widget/if_didnt_have_account.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/widget/login_with_email.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_apple.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  //
  //
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool obscureTexts = true;

  @override
  Widget build(BuildContext context) {
    var trigerLogin = BlocProvider.of<EmailLoginCubit>(context);
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 25.h,
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
            StringsManger.login,
            style: TextStyle(fontSize: 24.sp),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return StringsManger.feildRequierd;
              } else if (!RegExp(r'[a-zA-Z]').hasMatch(value)) {
                return StringsManger.feildRequierd;
              }
              return null;
            },
            onChanged: (value) {
              trigerLogin.email = value;
            },
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            //  height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.emailAddress,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return StringsManger.feildRequierd;
              } else if (!RegExp(r'^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[\W_]).+$')
                  .hasMatch(value)) {
                return StringsManger.addLetterAndCharts;
              }
              return null;
            },
            maxLines: 1,
            obscureText: obscureTexts,
            prefixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureTexts = !obscureTexts;
                });
              },
              child:
                  Icon(obscureTexts ? Icons.visibility_off : Icons.visibility),
            ),
            onChanged: (value) {
              trigerLogin.password = value;
            },
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.password,
          ),
          SizedBox(
            height: 10.h,
          ),
          const ForgetPassword(),
          SizedBox(
            height: 10.h,
          ),
          LoginWithEmail(
            formKey: formKey,
          ),
          SizedBox(
            height: 10.h,
          ),
          //
          //
          const IfdidntHaveAccount(),
          //
          //
          SizedBox(
            height: 10.h,
          ),
          //
          //
          Text(
            StringsManger.or,
            style: TextStyle(fontSize: 24.sp),
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
      ),
    );
  }
}

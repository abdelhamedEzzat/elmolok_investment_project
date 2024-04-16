import 'package:elmolak_investment_app/core/constans/image/images_manager.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/core/strings/strings.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/controller/email_sign_up_cubit/email_sign_up_cubit.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/if_have_account.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_apple.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_email.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/sign_up_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({
    super.key,
  });

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

bool obscureTexts = true;
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    var signUpCubit = BlocProvider.of<SignUpCubit>(context);

    return Form(
      key: formKey,
      child: Column(
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
              signUpCubit.email = value;
            },
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
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
              signUpCubit.password = value;
            },
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.password,
          ),
          SizedBox(
            height: 20.h,
          ),
          SignUpWithEmail(
            formKey: formKey,
          ),
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

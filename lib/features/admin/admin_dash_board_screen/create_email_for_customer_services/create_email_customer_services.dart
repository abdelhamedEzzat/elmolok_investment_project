import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateCustomerServicesEmailScreen extends StatelessWidget {
  const CreateCustomerServicesEmailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                StringsManger.createCustomerEmail,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ))),
      body: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.firstName,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.lastName,
          ),

          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.emailAddress,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.password,
          ),

          //
          //

          SizedBox(
            height: 10.h,
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              alignment: Alignment.bottomCenter,
              child: BottonClick(
                  borderRadius: BorderRadius.circular(10.sp),
                  text: StringsManger.submit,
                  alignment: Alignment.center,
                  onTap: () {},
                  width: MediaQuery.of(context).size.width),
            ),
          ),

          SizedBox(
            height: 10.h,
          ),
          //
          //
        ],
      ),
    );
  }
}

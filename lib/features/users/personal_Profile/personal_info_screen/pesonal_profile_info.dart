import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/widgets/personal_pic.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/widgets/static_bottons_in_personal_protfolio_screen.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class personalProfileinfo extends StatelessWidget {
  const personalProfileinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: ColorManger.buttonColor, blurRadius: 1),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),

                    const PersonalPic(
                      personalPicIcon: Icons.add_a_photo,
                    ),

                    SizedBox(height: 10.h),
                    const TitleText(
                      titleText: StringsManger.firstName,
                    ),
                    CustomTextFormField(
                      enabled: false,
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 15.sp,
                        color: Colors.grey,
                      ),
                      border: const UnderlineInputBorder(),
                      hintText: "ابراهيم",
                    ),
                    //
                    //
                    //
                    SizedBox(height: 10.h),
                    //
                    //
                    //
                    const TitleText(
                      titleText: StringsManger.lastName,
                    ),
                    CustomTextFormField(
                      enabled: false,
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 15.sp,
                        color: Colors.grey,
                      ),
                      border: const UnderlineInputBorder(),
                      hintText: "محمد",
                    ),
                    //
                    //
                    //
                    SizedBox(height: 10.h),
                    const TitleText(
                      titleText: StringsManger.emailAddress,
                    ),
                    CustomTextFormField(
                      hintColor: Colors.black,
                      enabled: false,
                      prefixIcon: Icon(
                        Icons.edit,
                        size: 10.sp,
                        color: Colors.grey,
                      ),
                      border: const UnderlineInputBorder(),
                      hintText: "ibrahem125@gmail.com",
                    ),
                    SizedBox(height: 15.h),
                    //
                    //
                    const TitleText(
                      titleText: StringsManger.phoneNumber,
                    ),
                    CustomTextFormField(
                      hintColor: Colors.black,
                      enabled: false,
                      prefixIcon: Icon(
                        Icons.edit,
                        size: 10.sp,
                        color: Colors.grey,
                      ),
                      border: const UnderlineInputBorder(),
                      hintText: "+098501758965235",
                    ),
                    SizedBox(height: 25.h),
                  ],
                ),
              ),
            ),
            const StaticBottonsInPersonalProtfolioScreen(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}

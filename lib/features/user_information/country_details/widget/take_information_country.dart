import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TakeCountryDetailsScreen extends StatelessWidget {
  const TakeCountryDetailsScreen({super.key});

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
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h, right: 30.w),
                  child: Icon(
                    Icons.add_location_alt,
                    color: ColorManger.buttonColor,
                    size: 60.h,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text.rich(TextSpan(children: [
          const TextSpan(
            text: "!",
            style: TextStyle(color: ColorManger.buttonColor),
          ),
          WidgetSpan(
              child: Container(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child: Text(
              "ابراهيم",
              style: TextStyle(
                  color: ColorManger.buttonColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            ),
          )),
          WidgetSpan(
            child: Text(
              StringsManger.welecome,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          )
        ])),
        SizedBox(
          height: 4.h,
        ),
        Text(
          StringsManger.whereAreyouForm,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          StringsManger.beforWeStart,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextFormField(
          prefixIcon: const Icon(
            Icons.arrow_drop_down,
            color: ColorManger.buttonColor,
          ),
          normalBorderColor: ColorManger.buttonColor.withOpacity(0.3),
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          height: 40.h,
          hintText: StringsManger.selectYourCountry,
          suffixIcon: Icon(
            Icons.location_city,
            color: ColorManger.buttonColor,
            size: 15.h,
          ),
        )
      ],
    );
  }
}

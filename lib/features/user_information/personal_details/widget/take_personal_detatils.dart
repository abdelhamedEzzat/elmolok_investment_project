import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TakePersonalDetailsScreen extends StatefulWidget {
  const TakePersonalDetailsScreen({
    super.key,
  });

  @override
  State<TakePersonalDetailsScreen> createState() =>
      _TakePersonalDetailsScreenState();
}

class _TakePersonalDetailsScreenState extends State<TakePersonalDetailsScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.h,
        ),

        //
        // Static Text in Take Personal Details screen
        //

        Text(
          StringsManger.startInvestingToday,
          style: TextStyle(
              color: ColorManger.buttonColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          StringsManger.fewMinutesToInvesting,
          style: TextStyle(
              color: ColorManger.buttonColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 20.h,
        ),

        //
        // first name CustomTextFormField
        //

        CustomTextFormField(
          normalBorderColor: ColorManger.buttonColor.withOpacity(0.3),
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          height: 40.h,
          hintText: StringsManger.firstName,
          suffixIcon: Icon(
            Icons.person,
            color: ColorManger.buttonColor,
            size: 15.h,
          ),
        ),

        //
        SizedBox(
          height: 10.h,
        ),

        //
        // last name CustomTextFormField
        //
        CustomTextFormField(
          normalBorderColor: ColorManger.buttonColor.withOpacity(0.3),
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          height: 40.h,
          hintText: StringsManger.lastName,
          suffixIcon: Icon(
            Icons.person,
            color: ColorManger.buttonColor,
            size: 15.h,
          ),
        ),

        //
        SizedBox(
          height: 10.h,
        ),

        //
        // birthdate CustomTextFormField
        //
        CustomTextFormField(
          normalBorderColor: ColorManger.buttonColor.withOpacity(0.3),
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          height: 40.h,
          hintText: StringsManger.birthdate,
          suffixIcon: Icon(
            Icons.calendar_month,
            color: ColorManger.buttonColor,
            size: 15.h,
          ),
        ),

        //
        SizedBox(
          height: 10.h,
        ),

        //
        //      phoneNumber CustomTextFormField
        //

        CustomTextFormField(
          normalBorderColor: ColorManger.buttonColor.withOpacity(0.3),
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          height: 40.h,
          hintText: StringsManger.phoneNumber,
          suffixIcon: Icon(
            Icons.phonelink_ring,
            color: ColorManger.buttonColor,
            size: 15.h,
          ),
        ),

        //
        //
        //

        SizedBox(
          height: 10.h,
        ),
        //
        // agree for user servies checkBox
        //
        Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (!states.contains(MaterialState.selected)) {
                      return Colors.white;
                    }
                    return null;
                  }),
                  side: BorderSide(
                      color: ColorManger.buttonColor.withOpacity(0.3),
                      width: 2),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              Text(
                StringsManger.agreeForUserServies,
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
              Text(
                StringsManger.userServies,
                style: TextStyle(
                    color: ColorManger.buttonColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}

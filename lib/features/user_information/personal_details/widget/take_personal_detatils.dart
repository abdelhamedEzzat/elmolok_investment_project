import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/features/user_information/personal_details/controller/personal_details/personal_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TakePersonalDetailsScreen extends StatefulWidget {
  const TakePersonalDetailsScreen({
    super.key,
    required this.formKey,
    required this.isChecked,
    required this.onCheckedChanged,
  });
  final GlobalKey<FormState> formKey;
  final bool isChecked;
  final Function(bool) onCheckedChanged;

  @override
  State<TakePersonalDetailsScreen> createState() =>
      _TakePersonalDetailsScreenState();
}

class _TakePersonalDetailsScreenState extends State<TakePersonalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var trigerCubit = BlocProvider.of<PersonalDetailsCubit>(context);
    return Form(
      key: widget.formKey,
      child: Column(
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return StringsManger.feildRequierd;
              } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                return StringsManger.pleaseEnterLettersOnly;
              }
              return null;
            },
            onChanged: (value) {
              trigerCubit.firstName = value;
            },
            normalBorderColor: ColorManger.buttonColor.withOpacity(0.3),
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return StringsManger.feildRequierd;
              } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                return StringsManger.pleaseEnterLettersOnly;
              }
              return null;
            },
            onChanged: (value) {
              trigerCubit.lastName = value;
            },
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return StringsManger.feildRequierd;
              } else if (!RegExp(r'^[a-zA-Z0-9\-_ ]+$').hasMatch(value)) {
                return StringsManger.pleaseEnternumbersAndunderscoresOnly;
              }
              return null;
            },
            onChanged: (value) {
              trigerCubit.birthDay = value;
            },
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
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return StringsManger.feildRequierd;
              } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                return "please enter numbers only";
              }
              return null;
            },
            keyboardType: TextInputType.number,
            onChanged: (value) {
              trigerCubit.phoneNumber = value;
            },
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
                    value: widget.isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        widget.onCheckedChanged(value ?? false);
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
      ),
    );
  }
}

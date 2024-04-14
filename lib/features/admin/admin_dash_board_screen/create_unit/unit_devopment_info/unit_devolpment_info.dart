import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/widgets/build_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitDevoleperInformation extends StatelessWidget {
  const UnitDevoleperInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: Center(
            child: Text(StringsManger.createUnit),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(children: [
              SlidersWidget(
                colors: [
                  ColorManger.buttonColor.withOpacity(0.2),
                  ColorManger.buttonColor.withOpacity(0.2),
                  ColorManger.buttonColor,
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.centerRight,
                          child: Text(StringsManger.developerInformation,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.w))),
                      SizedBox(height: 10.h),
                      const CustomTextFormField(
                          hintText: StringsManger.nameOfDeveloperComapny),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
              ),
              BuildItems(
                nameOfButton: StringsManger.publish,
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ConstantsRouteString.unitDevoleperInformation);
                },
              ),
              SizedBox(
                height: 15.h,
              ),
            ])));
  }
}

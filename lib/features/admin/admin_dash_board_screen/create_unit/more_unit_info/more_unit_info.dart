import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/widgets/build_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreUnitInformation extends StatelessWidget {
  const MoreUnitInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(
        title: Center(
          child: Text(StringsManger.createUnit),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SlidersWidget(
              color4: ColorManger.buttonColor,
              colors: [
                ColorManger.buttonColor.withOpacity(0.2),
                ColorManger.buttonColor.withOpacity(0.2),
                ColorManger.buttonColor.withOpacity(0.2),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        StringsManger.moreUnitInformation,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.w),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const CustomTextFormField(
                      hintText: StringsManger.titleForMoreInformationForUnit,
                    ),
                    SizedBox(height: 15.h),
                    const CustomTextFormField(
                      maxLines: 15,
                      minLines: 3,
                      hintText: StringsManger.subtitleForMoreInformationForUnit,
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        StringsManger.resonsWhyYouShouldChooseThisUnit,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.w),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const CustomTextFormField(
                      hintText: StringsManger.whyYouShouldChooseThisUnit,
                    ),
                    SizedBox(height: 15.h),
                    const CustomTextFormField(
                      maxLines: 15,
                      minLines: 3,
                      hintText:
                          StringsManger.subTitleForwhyYouShouldChooseThisUnit,
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              ),
            ),
            BuildItems(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(ConstantsRouteString.financialTransactions);
              },
            ),
            SizedBox(
              height: 15.h,
            )
          ],
        ),
      ),
    );
  }
}

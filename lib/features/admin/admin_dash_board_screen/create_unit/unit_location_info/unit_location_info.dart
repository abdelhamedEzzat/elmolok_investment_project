import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/widgets/build_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitLocationInformation extends StatelessWidget {
  const UnitLocationInformation({super.key});

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
              colors: [
                ColorManger.buttonColor.withOpacity(0.2),
                ColorManger.buttonColor,
                ColorManger.buttonColor.withOpacity(0.2),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerRight,
                      child: Text(StringsManger.propertyLocation,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.w))),
                  SizedBox(height: 10.h),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: const [
                          BoxShadow(blurRadius: 3.0, offset: Offset(0, 2))
                        ]),
                    height: 200.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringsManger.selectTheLocation,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.w),
                        ),
                        SizedBox(width: 10.w),
                        Icon(
                          Icons.location_city,
                          size: 30.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
            BuildItems(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(ConstantsRouteString.unitDevoleperInformation);
              },
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/widget/key_investment_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/widgets/build_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestmentCalcolator extends StatelessWidget {
  const InvestmentCalcolator({super.key});

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
                ColorManger.buttonColor,
                ColorManger.buttonColor.withOpacity(0.2),
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
                      child: Text(StringsManger.investmentCalcolator,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.w))),
                  SizedBox(height: 10.h),
                  const keyInvestmentInformation(
                    keysContainerText: StringsManger.investmentAmount,
                    keysHintText: "2000 AED",
                  ),
                  SizedBox(height: 10.h),
                  const keyInvestmentInformation(
                    keysContainerText: StringsManger.expectedAnnualAppreciation,
                    keysHintText: "6.00 %",
                  ),
                  SizedBox(height: 10.h),
                  const keyInvestmentInformation(
                    keysContainerText: StringsManger.expectedRentalYield,
                    keysHintText: "6.63 %",
                  ),
                  SizedBox(height: 10.h),
                  const keyInvestmentInformation(
                    keysContainerText: StringsManger.investmentHoldingPeriod,
                    keysHintText: "5 Years",
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
            BuildItems(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(ConstantsRouteString.unitLocationInformation);
              },
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}

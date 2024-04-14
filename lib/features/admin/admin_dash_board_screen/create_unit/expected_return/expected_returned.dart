import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/widget/key_investment_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/widgets/build_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpectedReturnedAdminScreen extends StatelessWidget {
  const ExpectedReturnedAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(StringsManger.createUnit),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SlidersWidget(
              color3: ColorManger.buttonColor,
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
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(StringsManger.expctedReturn,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.w)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.annualRentalyield,
                      keysHintText: StringsManger.annualRentalyield,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netRentalyield,
                      keysHintText: StringsManger.netRentalyield,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.annualizedReturn,
                      keysHintText: StringsManger.annualizedReturn,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netAnnualizedReturn,
                      keysHintText: StringsManger.netAnnualizedReturn,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.totalExpectedReturn,
                      keysHintText: StringsManger.totalExpectedReturn,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netExpectedReturn,
                      keysHintText: StringsManger.netExpectedReturn,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.expectAnnualAppreciation,
                      keysHintText: StringsManger.expectAnnualAppreciation,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.rentalReturnFrequency,
                      keysHintText: StringsManger.rentalReturnFrequency,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    BuildItems(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            ConstantsRouteString.moreUnitInformation);
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

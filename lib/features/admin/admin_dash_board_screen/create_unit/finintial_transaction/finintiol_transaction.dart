import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/widget/key_investment_info.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/widgets/build_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinancialTransactions extends StatelessWidget {
  const FinancialTransactions({super.key});

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
        child: Column(
          children: [
            SlidersWidget(
              color5: ColorManger.buttonColor,
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
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(StringsManger.financialTransactions,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.w))),

                    const Divider(),
                    SizedBox(height: 10.h),

                    //
                    //   transactionsDetails = "تفاصيل المعاملات";
                    //

                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(StringsManger.transactionsDetails,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.w))),
                    SizedBox(height: 10.h),

                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.transactionsDetails,
                      keysHintText: StringsManger.transactionsDetails,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.investmentAmount,
                      keysHintText: StringsManger.investmentAmount,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.totalAcquisitionCost,
                      keysHintText: StringsManger.totalAcquisitionCost,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.numberOfShares,
                      keysHintText: StringsManger.numberOfShares,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.propertyPricePerShare,
                      keysHintText: StringsManger.propertyPricePerShare,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.transctionCostPerShare,
                      keysHintText: StringsManger.transctionCostPerShare,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.totalPricePerShare,
                      keysHintText: StringsManger.totalPricePerShare,
                    ),

                    SizedBox(height: 15.h),
                    //
                    //     rentalBreakdown = " تقسيم الإيجار";
                    //

                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(StringsManger.rentalBreakdown,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.w))),
                    SizedBox(height: 10.h),

                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.grossRentPerYear,
                      keysHintText: StringsManger.grossRentPerYear,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.serviceCharges,
                      keysHintText: StringsManger.serviceCharges,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netRent,
                      keysHintText: StringsManger.netRent,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netYeild,
                      keysHintText: StringsManger.netYeild,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.costs,
                      keysHintText: StringsManger.costs,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.propertyInsorance,
                      keysHintText: StringsManger.propertyInsorance,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.propertyMangement,
                      keysHintText: StringsManger.propertyMangement,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netRentalIncome,
                      keysHintText: StringsManger.netRentalIncome,
                    ),
                    SizedBox(height: 10.h),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netrentalYeild,
                      keysHintText: StringsManger.netrentalYeild,
                    ),

                    SizedBox(height: 15.h),

                    BuildItems(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            ConstantsRouteString.investmentCalcolator);
                      },
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

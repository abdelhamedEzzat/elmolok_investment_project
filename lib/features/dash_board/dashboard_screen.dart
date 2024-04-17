import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_drawer.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/chart_for_protifolio.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/custam_table.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/investment_mode_ytd.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/property_update.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/rental_information.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/rental_reseved.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/rental_statment.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/total_profile_value.dart';
import 'package:elmolak_investment_app/features/dash_board/widget/your_annal_investment_limit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> arithmeticinformation = [
      {
        "title": StringsManger.totalRentalToDate,
        "leading": "AED 0.00",
        "icon": Icons.circle,
        "color": Colors.black
      },
      {
        "title": StringsManger.currentMonthRentalRecived,
        "leading": "AED 0.00",
        "icon": Icons.circle,
        "color": Colors.black
      },
      {
        "title": StringsManger.activeInvestment,
        "leading": "view",
        "icon": Icons.circle,
        "color": ColorManger.buttonColor
      }
    ];
    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: const CustomAppBar(
          title: Text(StringsManger.dashboard),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            shrinkWrap: true,
            children: [
              const TotalPortfolioValue(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Column(
                  children: [
                    RentalInformation(
                        arithmeticinformation: arithmeticinformation),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomContainerForTable(
                      fontSize: 12.sp,
                      titleText: StringsManger.financialTransactions,
                      alignment: Alignment.topRight,
                      initText: StringsManger.thereAreNoRecoredsToShow,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ChartForProtifolio(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const PropertyUpdates(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const RentalRecived(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const RentalStatement(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        const InvestmentModeYTD(),
                        SizedBox(
                          width: 10.w,
                        ),
                        const YourAnnualInvestmentLimit(),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

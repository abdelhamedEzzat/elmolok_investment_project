import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_drawer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                height: 10.h,
              ),
            ],
          ),
        ));
  }
}

class TotalPortfolioValue extends StatelessWidget {
  const TotalPortfolioValue({
    super.key,
  });

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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: ColorManger.buttonColor, blurRadius: 2)
                ]),
            child: ExpansionTile(
              leading: const Icon(
                Icons.wallet,
                color: ColorManger.buttonColor,
              ),
              title: Text(
                StringsManger.totalPortfolioValue,
                style: TextStyle(fontSize: 10.sp),
              ),
              subtitle: Text(
                "AED 0.00",
                style: TextStyle(fontSize: 10.sp),
              ),
              children: [
                Column(
                  children: [
                    const Divider(),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        StringsManger.thereAreNoRecoredsToShow,
                        style: TextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(10.h),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: arithmeticinformation.map((info) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: info["leading"] == "view"
                          ? GestureDetector(
                              onTap: () {
                                // Handle onTap for leading "view"
                              },
                              child: Text(
                                info["leading"],
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: info["color"],
                                ),
                              ),
                            )
                          : Text(info["leading"],
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: info["color"],
                              )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            info["title"],
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Icon(
                          info["icon"],
                          size: 8.sp,
                          color: ColorManger.buttonColor,
                        ),
                      ],
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(10.h),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      StringsManger.financialTransactions,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                const CustomTable(
                  columnName4: StringsManger.transactionsStuts,
                  columnName3: StringsManger.financialAmount,
                  columnName2: StringsManger.financialDate,
                  columnName1: StringsManger.financialNumber,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 250.h,
            padding: EdgeInsets.all(10.h),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                ]),
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    color: Colors.grey,
                    value: 100,
                    title: 'محفظتك\n100%',
                    titlePositionPercentageOffset: -2,
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 80,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(10.h),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  StringsManger.propertyUpdates,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Center(
                    child: Text(
                  StringsManger.thereAreNoRecoredsToShow,
                  style: TextStyle(fontSize: 12.sp),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(10.h),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  StringsManger.rentalReceived,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_drop_down,
                      size: 20.sp,
                    ),
                    Text(
                      "06  jan  2024 - 6  apr  2024",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Center(
                    child: Text(
                  StringsManger.thereAreNoRecoredsToShow,
                  style: TextStyle(fontSize: 12.sp),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.all(10.h),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  StringsManger.rentalStatment,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Center(
                    child: Text(
                  StringsManger.noRentInSelectDateRange,
                  style: TextStyle(fontSize: 12.sp),
                )),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.h),
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              right: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.grey)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Icon(Icons.monetization_on_outlined),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "AED 0.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        StringsManger.investmentModeYTD,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 8.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.h),
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(color: ColorManger.buttonColor, blurRadius: 1)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              right: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.grey)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Icon(Icons.shopping_bag),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "AED 183.625.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        StringsManger.yourAnnualInvestmentlimit,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 8.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

class CustomTable extends StatelessWidget {
  const CustomTable(
      {super.key,
      this.thcolumnWid0,
      this.thcolumnWid1,
      this.thcolumnWid2,
      this.thcolumnWid3,
      this.columnName4,
      this.columnName3,
      this.columnName2,
      this.columnName1});
  final double? thcolumnWid0;
  final double? thcolumnWid1;
  final double? thcolumnWid2;
  final double? thcolumnWid3;
  final String? columnName4;
  final String? columnName3;
  final String? columnName2;
  final String? columnName1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.dg),
        child: Table(
          border: TableBorder.all(color: Colors.white),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {
            0: FixedColumnWidth(thcolumnWid0 ?? 70.w),
            1: FlexColumnWidth(thcolumnWid1 ?? 60.w),
            2: FlexColumnWidth(thcolumnWid2 ?? 100.w),
            3: FlexColumnWidth(thcolumnWid3 ?? 45.w),
          },
          children: [
            TableRow(
              decoration: const BoxDecoration(color: Colors.black),
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      columnName4 ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      columnName3 ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      columnName2 ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      columnName1 ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// dashboard_screen
class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

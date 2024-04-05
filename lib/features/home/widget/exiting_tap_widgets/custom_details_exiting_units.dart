import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsExitingUnits extends StatelessWidget {
  const CustomDetailsExitingUnits({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> detailsWordItems = [
      StringsManger.propertyPurcgasePrice,
      StringsManger.investmentHoldingPeriod,
      StringsManger.totalRentalIncome,
      StringsManger.exitPrice,
    ];
    final List<Map<String, dynamic>> detailsNumberItems = [
      {
        'title': "12,258,000",
        'currency': "UED ",
      },
      {'title': "18 Month", 'currency': ""},
      {
        'title': " 228,527",
        'currency': "UED",
      },
      {
        'title': " 22,000",
        'currency': Icons.arrow_outward,
      },
    ];
    // List<String> detailsNumberItems = [
    //   "8.51%",
    //   "6.94%",
    //   "11.44%",
    //   "57.00%",
    // ];

    return Container(
      color: ColorManger.backgroundColor,
      padding: const EdgeInsets.all(5),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: detailsWordItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: _buildCurrencyWidget(
                                  detailsNumberItems[index]['currency']),
                            ),
                            Text(
                              detailsNumberItems[index]['title'],
                              style: TextStyle(
                                  fontSize: 11.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                Text(
                  detailsWordItems[index],
                  style: TextStyle(fontSize: 12.sp),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCurrencyWidget(dynamic currencyData) {
    if (currencyData is String) {
      // If the currency data is a string, display it as Text
      return Text(
        currencyData,
        style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
      );
    } else if (currencyData is IconData) {
      // If the currency data is an icon, display it as Icon
      return Icon(
        currencyData,
        size: 12.sp,
        color: Colors.teal,
      );
    } else {
      // Handle other types of currency data if needed
      return const SizedBox(); // Placeholder, you can customize this part as needed
    }
  }
}

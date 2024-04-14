import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsFundedUnits extends StatelessWidget {
  const CustomDetailsFundedUnits({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> detailsWordItems = [
      StringsManger.expectedGrossYield,
      StringsManger.expectedRentalYield,
      StringsManger.expctedReturn,
      StringsManger.purechaseDate,
      StringsManger.propretyPurechasePrice,
      StringsManger.currentMarketValue,
    ];
    final List<Map<String, dynamic>> detailsNumberItems = [
      {
        'title': "8.27%",
        'currency': "",
      },
      {'title': "7.09%", 'currency': ""},
      {
        'title': "46.00%",
        'currency': "",
      },
      {
        'title': "2024-04-01",
        'currency': "",
      },
      {
        'title': "1.375.000",
        'currency': "UED",
      },
      {
        'title': "1.375.000",
        'currency': "",
      },
    ];

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
                            Text(
                              detailsNumberItems[index]['currency'],
                              style: TextStyle(
                                  fontSize: 11.sp, fontWeight: FontWeight.bold),
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
}

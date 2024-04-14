import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsItems extends StatelessWidget {
  const CustomDetailsItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> detailsWordItems = [
      StringsManger.annualRentalyield,
      StringsManger.netRentalyield,
      StringsManger.annualizedReturn,
      StringsManger.totalExpectedRetutn,
    ];
    List<String> detailsNumberItems = [
      "8.51%",
      "6.94%",
      "11.44%",
      "57.00%",
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
                Text(
                  detailsNumberItems[index],
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
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

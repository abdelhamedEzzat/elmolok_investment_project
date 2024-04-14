import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalPortfolioValue extends StatelessWidget {
  const TotalPortfolioValue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

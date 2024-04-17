import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestmentModeYTD extends StatelessWidget {
  const InvestmentModeYTD({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitPrice extends StatelessWidget {
  const UnitPrice(
      {super.key,
      required this.totalPriceUnit,
      required this.currancyOfPriceUnit,
      required this.unitPriceName,
      this.totalInHubdredPercent});

  final String totalPriceUnit;
  final String currancyOfPriceUnit;
  final String unitPriceName;
  final String? totalInHubdredPercent;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                totalPriceUnit,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                totalInHubdredPercent ?? "",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                currancyOfPriceUnit,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            unitPriceName,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
// "1,350,000"
//                 "Usd",

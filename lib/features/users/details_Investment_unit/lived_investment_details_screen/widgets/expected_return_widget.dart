import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpectedReturnWidget extends StatelessWidget {
  const ExpectedReturnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      padding:
          EdgeInsets.only(bottom: 10.h, top: 10.h, right: 20.w, left: 20.w),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: ColorManger.buttonColor, blurRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              StringsManger.expctedReturn,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "11.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.work_history,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.pageview,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.local_activity,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.business_center,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
              SizedBox(
                width: 20.w,
              ),
              const ExpectedReturnItems(
                titleOfExpectedReturn: StringsManger.annualRentalyield,
                subtitleOfExpectedReturn: "8.51%",
                iconOfExpectedReturn: Icons.add_sharp,
              ),
            ],
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          SizedBox(
            height: 10.w,
          ),
        ],
      ),
    );
  }
}

class ExpectedReturnItems extends StatelessWidget {
  const ExpectedReturnItems({
    super.key,
    required this.titleOfExpectedReturn,
    required this.subtitleOfExpectedReturn,
    required this.iconOfExpectedReturn,
  });
  final String titleOfExpectedReturn;
  final String subtitleOfExpectedReturn;
  final IconData iconOfExpectedReturn;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Column(
            children: [
              Text(
                titleOfExpectedReturn,
                style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitleOfExpectedReturn,
                style:
                    TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
              )
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: ColorManger.buttonColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(iconOfExpectedReturn, color: ColorManger.buttonColor),
          ),
        ],
      ),
    );
  }
}

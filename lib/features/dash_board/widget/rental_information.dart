import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RentalInformation extends StatelessWidget {
  const RentalInformation({
    super.key,
    required this.arithmeticinformation,
  });

  final List<Map<String, dynamic>> arithmeticinformation;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          Navigator.of(context).pushNamed(
                              ConstantsRouteString.viewAvaliableInvestment);
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
    );
  }
}

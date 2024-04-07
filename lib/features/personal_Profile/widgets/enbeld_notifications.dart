import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnableNotifications extends StatelessWidget {
  const EnableNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20.w),
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: ColorManger.buttonColor, blurRadius: 1),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_right),
          Row(
            children: [
              const Text(StringsManger.enableNotification),
              SizedBox(
                width: 10.w,
              ),
              Icon(
                Icons.notifications_active,
                size: 18.sp,
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IfdidntHaveAccount extends StatelessWidget {
  const IfdidntHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25, left: 25),
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              StringsManger.signUp,
              style: TextStyle(
                  color: ColorManger.buttonColor,
                  fontSize: 14.w,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            StringsManger.didntHaveAccount,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.w,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IfYouHaveAccount extends StatelessWidget {
  const IfYouHaveAccount({
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
          Text(
            StringsManger.signIn,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.w,
                fontWeight: FontWeight.bold),
          ),
          Text(
            StringsManger.aleardyHaveAccount,
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

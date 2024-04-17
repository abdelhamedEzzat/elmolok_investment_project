import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAccounts extends StatelessWidget {
  const DeleteAccounts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20.w),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: ColorManger.buttonColor.withOpacity(0.1),
          boxShadow: [
            BoxShadow(
                color: ColorManger.buttonColor.withOpacity(0.1), blurRadius: 1),
          ]),
      child: Text(
        StringsManger.delteProfile,
        style: TextStyle(color: ColorManger.buttonColor, fontSize: 12.sp),
      ),
    );
  }
}

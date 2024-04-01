import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithEmail extends StatelessWidget {
  const LoginWithEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottonClick(
      height: 50.h,
      margin: const EdgeInsets.only(left: 25, right: 25),
      onTap: () {},
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      text: StringsManger.login,
    );
  }
}

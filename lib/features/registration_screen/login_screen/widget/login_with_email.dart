import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:flutter/material.dart';

class LoginWithEmail extends StatelessWidget {
  const LoginWithEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottonClick(
      onTap: () {},
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      text: StringsManger.login,
    );
  }
}

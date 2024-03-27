import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:flutter/material.dart';

class SignUpWithEmail extends StatelessWidget {
  const SignUpWithEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottonClick(
      onTap: () {},
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      text: StringsManger.signUp,
    );
  }
}

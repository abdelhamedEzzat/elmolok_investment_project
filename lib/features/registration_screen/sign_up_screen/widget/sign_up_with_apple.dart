import 'package:elmolak_investment_app/core/constans/image/images_manager.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton_with_pic.dart';
import 'package:flutter/material.dart';

class SignInWithApple extends StatelessWidget {
  const SignInWithApple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PictureBottonClick(
      iconImage: ImagesManager.appleLogo,
      color: Colors.white,
      onTap: () {},
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      text: StringsManger.continueWithApple,
    );
  }
}

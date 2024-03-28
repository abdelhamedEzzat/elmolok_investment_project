import 'package:elmolak_investment_app/core/constans/image/images_manager.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/botton_with_pic.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PictureBottonClick(
      onTap: () {},
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      text: StringsManger.loginWithGoogle,
      color: Colors.white,
      iconImage: ImagesManager.googleLogo,
    );
  }
}

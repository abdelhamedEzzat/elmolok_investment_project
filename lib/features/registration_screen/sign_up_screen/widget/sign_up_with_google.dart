import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/image/images_manager.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/controller/google-sign_up/cubit/google_sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/botton_with_pic.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var trigerCubit = BlocProvider.of<GoogleSignUpCubit>(context);

    return BlocConsumer<GoogleSignUpCubit, GoogleSignUpState>(
      listener: (context, state) {
        if (state is GoogleSignUpLoading) {
          const CircularProgressIndicator();
        }
        //
        ///
        //
        else if (state is GoogleSignUpSuccess) {
          Navigator.of(context)
              .pushNamed(ConstantsRouteString.personalDetailsScreen);
        }
        //
        ///
        //
        else if (state is GoogleSignUpFaild) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'Error',
                  style:
                      TextStyle(color: ColorManger.buttonColor, fontSize: 18.w),
                ),
                content: Text(
                    state.error), // Display the error message from the state
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text(
                      'حسنا',
                      style: TextStyle(
                          color: ColorManger.buttonColor, fontSize: 14.w),
                    ), // Text for the button
                  ),
                ],
              );
            },
          );
        }
        //
        ///
        //
      },
      builder: (context, state) {
        return PictureBottonClick(
          onTap: () {
            trigerCubit.signInWithGoogle();
          },
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          text: StringsManger.loginWithGoogle,
          color: Colors.white,
          iconImage: ImagesManager.googleLogo,
        );
      },
    );
  }
}

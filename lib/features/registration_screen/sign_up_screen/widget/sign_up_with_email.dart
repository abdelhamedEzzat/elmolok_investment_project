import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/controller/email_sign_up_cubit/email_sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpWithEmail extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const SignUpWithEmail({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          const CircularProgressIndicator();
        }
        //
        ///
        //
        else if (state is SignUpSuccess) {
          Navigator.of(context)
              .pushNamed(ConstantsRouteString.personalDetailsScreen);
        }
        //
        ///
        //
        else if (state is SignUpFaild) {
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
        var signUpCubit = BlocProvider.of<SignUpCubit>(context);
        return BottonClick(
          height: 50.h,
          margin: const EdgeInsets.only(left: 25, right: 25),
          onTap: () async {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              await signUpCubit.userSignUPWithEmailAndPassword(
                  email: signUpCubit.email, password: signUpCubit.password);
            }
            // Trigger the sign-up action
          },
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          text: StringsManger.signUp,
        );
      },
    );
  }
}

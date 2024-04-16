import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/features/registration_screen/login_screen/controller/email_login/email_login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool isRest = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25, left: 25),
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BlocConsumer<EmailLoginCubit, EmailLoginState>(
            listener: (context, state) {
              if (state is ResetPassworedLoading) {
                const CircularProgressIndicator();
              }
              if (state is ResetPassworedSuccess) {
              } else if (state is ResetPassworedfaild) {
                errorDialogInForgetPassword(context, state);
              }
            },
            builder: (context, state) {
              var trigerCubit = BlocProvider.of<EmailLoginCubit>(context);
              return GestureDetector(
                onTap: () {
                  showAlertDialog(
                    content: CustomTextFormField(
                        onChanged: (value) {
                          trigerCubit.email = value;
                        },
                        hintText: StringsManger.writeEmailThatYouHasLoginByIt),
                    onTap: () async {
                      Navigator.of(context).pop();
                      await trigerCubit.resetAccount();
                      setState(() {
                        shawOtherDialog(
                          content: Text(
                            StringsManger.sentResetPasswordEmail,
                            style: TextStyle(fontSize: 12.w),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        );
                      });
                    },
                  );
                },
                child: Text(
                  StringsManger.forgetPassword,
                  style: TextStyle(
                      color: ColorManger.buttonColor,
                      fontSize: 14.w,
                      fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  showAlertDialog({required void Function()? onTap, required Widget? content}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'اعاده تعين كلمه السر',
            style: TextStyle(color: ColorManger.buttonColor, fontSize: 18.w),
          ),
          content: content, // Display the error message
          actions: <Widget>[
            TextButton(
              onPressed: onTap,
              child: Text(
                'تاكيد',
                style: TextStyle(
                  color: ColorManger.buttonColor,
                  fontSize: 14.w,
                ),
              ),
              // Text for the button
            ),
          ],
        );
      },
    );
  }

  shawOtherDialog({required void Function()? onTap, required Widget? content}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            StringsManger.verifySendEmail,
            style: TextStyle(color: ColorManger.buttonColor, fontSize: 18.w),
          ),
          content: content, // Display the error message
          actions: <Widget>[
            TextButton(
              onPressed: onTap,
              child: Text(
                StringsManger.ok,
                style: TextStyle(
                  color: ColorManger.buttonColor,
                  fontSize: 14.w,
                ),
              ),
              // Text for the button
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> errorDialogInForgetPassword(
      BuildContext context, ResetPassworedfaild state) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Error',
            style: TextStyle(color: ColorManger.buttonColor, fontSize: 18.w),
          ),
          content: Text(state.error),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                StringsManger.ok,
                style:
                    TextStyle(color: ColorManger.buttonColor, fontSize: 14.w),
              ),
            ),
          ],
        );
      },
    );
  }
}

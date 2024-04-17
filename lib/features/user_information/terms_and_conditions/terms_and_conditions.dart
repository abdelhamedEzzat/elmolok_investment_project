import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/features/home/home_screen.dart';
import 'package:elmolak_investment_app/features/user_information/personal_details/slider_widget.dart';
import 'package:elmolak_investment_app/features/user_information/terms_and_conditions/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManger.backgroundColorforDetailsInformation,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 5, right: 25.w, left: 25.w, bottom: 25.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //
              // SlidersWidget
              //

              SlidersWidget(
                color1: ColorManger.buttonColor,
                color2: ColorManger.buttonColor,
                color3: ColorManger.buttonColor,
                color4: ColorManger.buttonColor,
                color5: isAccepted
                    ? ColorManger.buttonColor
                    : ColorManger.buttonColor.withOpacity(0.3),
              ),
              //
              SizedBox(
                height: 20.h,
              ),

              //
              // TakePersonalDetailsScreen
              //
              Expanded(
                  child: SingleChildScrollView(
                      child: TermsAndConditionWidget(
                          isAccepted: isAccepted,
                          onAcceptedChanged: (value) {
                            setState(() {
                              isAccepted = value;
                            });
                          }))),
              //

              //
              //
              //
              Container(
                alignment: Alignment.bottomCenter,
                child: BottonClick(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  colorBotton: ColorManger.buttonColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.w),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      CustomPageRoute(child: const HomeScreen()),
                      (route) => false,
                    );
                  },
                  text: StringsManger.next,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  CustomPageRoute({
    required this.child,
  }) : super(
          transitionDuration: const Duration(seconds: 2),
          pageBuilder: (context, animation, secondryAndimation) => child,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      ScaleTransition(scale: animation, child: child);
}

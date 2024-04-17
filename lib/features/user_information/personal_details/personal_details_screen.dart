import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/user_information/personal_details/widget/take_personal_detatils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PersonalDetailsScreenState createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManger.backgroundColorforDetailsInformation,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 5.h, right: 25.w, left: 25.w, bottom: 25.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //
              // SlidersWidget
              //

              const SlidersWidget(),
              //
              SizedBox(
                height: 20.h,
              ),

              //
              // TakePersonalDetailsScreen
              //
              Expanded(
                  child: SingleChildScrollView(
                      child: TakePersonalDetailsScreen(
                onCheckedChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
                formKey: formKey,
                isChecked: isChecked,
              ))),
              //

              //
              //
              //
              Container(
                alignment: Alignment.bottomCenter,
                child: BottonClick(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  colorBotton: isChecked == false
                      ? ColorManger.buttonColor.withOpacity(0.2)
                      : ColorManger.buttonColor,
                  borderRadius: BorderRadius.circular(5.w),
                  onTap: () {
                    if (formKey.currentState != null &&
                        formKey.currentState!.validate() &&
                        isChecked == true) {
                      formKey.currentState!.save();
                      Navigator.of(context)
                          .pushNamed(ConstantsRouteString.countryDetailsScreen);
                    }
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

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/features/user_information/country_details/widget/take_information_country.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryDetailsScreen extends StatelessWidget {
  const CountryDetailsScreen({super.key});

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

              const SlidersWidget(
                color1: ColorManger.buttonColor,
              ),
              //
              SizedBox(
                height: 20.h,
              ),

              //
              // TakePersonalDetailsScreen
              //
              const Expanded(
                  child:
                      SingleChildScrollView(child: TakeCountryDetailsScreen())),
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
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.cityDetailsScreen);
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

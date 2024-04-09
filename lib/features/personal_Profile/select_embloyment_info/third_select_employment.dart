import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/personal_Profile/select_embloyment_info/first_select_embloyment_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdSelectEmploymentScreens extends StatefulWidget {
  const ThirdSelectEmploymentScreens({super.key});

  @override
  State<ThirdSelectEmploymentScreens> createState() =>
      _ThirdSelectEmploymentScreensState();
}

class _ThirdSelectEmploymentScreensState
    extends State<ThirdSelectEmploymentScreens> {
  List<String> titles = [
    "0 \$ - 50.000 \$ ",
    "50.001 \$ - 100.000 \$ ",
    "100.001 \$ - 250.000 \$ ",
    "250.001 \$ - 500.000 \$ ",
    "500.001 \$ - 750.000 \$ ",
    "1,000.001 \$ ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SelcetEmploymentScreenItems(
          titles: titles,
          buttonText: StringsManger.next,
          onTap: () {
            Navigator.of(context)
                .pushNamed(ConstantsRouteString.uploadPassportPicScreen);
          },
          titleForEmploymentScreen:
              StringsManger.youAreDoingGreatjustOneMoreSteps,
          subTitle: StringsManger.pleaseSelectTheValueOfYourCurrentNetWorth,
          hitText: StringsManger.netWorth,
          iconForHome: Icons.home,
          iconbackScreen: Icons.arrow_back_ios_sharp,
          selectTap: () {},
          onTapToiconbackScreen: () {
            Navigator.of(context).pop();
          },
        ),
      )),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstSelectEmploymentScreens extends StatefulWidget {
  const FirstSelectEmploymentScreens({super.key});

  @override
  State<FirstSelectEmploymentScreens> createState() =>
      _SelectEmploymentScreensState();
}

class _SelectEmploymentScreensState
    extends State<FirstSelectEmploymentScreens> {
  List<String> titles = [
    StringsManger.iamEmployment,
    StringsManger.iamSelfEmployed,
    StringsManger.iamRetired,
    StringsManger.iamUnemployed,
    StringsManger.iamStudent,
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
                .pushNamed(ConstantsRouteString.secoundSelectEmploymentScreens);
          },
          titleForEmploymentScreen:
              StringsManger.goodluckapplyingforinvestmentwithus,
          subTitle: StringsManger.youAreJust3Steps,
          hitText: StringsManger.pleaseSelectOne,
          iconForHome: Icons.home,
          nameOfUser: ", ابراهيم",
          selectTap: () {},
        ),
      )),
    );
  }
}

class SelcetEmploymentScreenItems extends StatefulWidget {
  const SelcetEmploymentScreenItems({
    super.key,
    required this.titles,
    required this.iconForHome,
    this.iconbackScreen,
    required this.titleForEmploymentScreen,
    required this.subTitle,
    required this.hitText,
    required this.onTap,
    required this.selectTap,
    required this.buttonText,
    this.nameOfUser,
    this.onTapToiconbackScreen,
  });

  final List<String> titles;
  final IconData iconForHome;
  final IconData? iconbackScreen;
  final String titleForEmploymentScreen;
  final String subTitle;
  final String hitText;
  final Function()? onTap;
  final Function()? selectTap;
  final String buttonText;
  final String? nameOfUser;
  final Function()? onTapToiconbackScreen;

  @override
  State<SelcetEmploymentScreenItems> createState() =>
      _SelcetEmploymentScreenItemsState();
}

class _SelcetEmploymentScreenItemsState
    extends State<SelcetEmploymentScreenItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  child: Icon(
                    widget.iconForHome,
                    color: ColorManger.buttonColor,
                  ),
                ),
              ),
            ),
            widget.iconbackScreen != null
                ? Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: GestureDetector(
                        onTap: widget.onTapToiconbackScreen,
                        child: CircleAvatar(
                          child: Icon(
                            widget.iconbackScreen,
                            color: ColorManger.buttonColor,
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        SizedBox(
          width: 5.h,
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.titleForEmploymentScreen,
              //StringsManger.goodluckapplyingforinvestmentwithus,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
            widget.nameOfUser != null
                ? Text(
                    "${widget.nameOfUser}",
                    style: TextStyle(
                        color: ColorManger.buttonColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  )
                : const SizedBox(),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            widget.subTitle,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.only(right: 5.w),
          alignment: Alignment.centerRight,
          child: Text(
            textAlign: TextAlign.center,
            widget.hitText,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
          itemCount: widget.titles.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: widget.selectTap,
              child: Container(
                height: 40.h,
                margin: EdgeInsets.only(bottom: 15.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black.withOpacity(0.1),
                ),
                child: Container(
                  padding: EdgeInsets.only(right: 15.w),
                  alignment: Alignment.centerRight,
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.titles[index],
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.only(bottom: 15.h),
          alignment: Alignment.bottomCenter,
          child: BottonClick(
              onTap: widget.onTap,
              borderRadius: BorderRadius.circular(10),
              alignment: Alignment.center,
              text: widget.buttonText,
              width: MediaQuery.of(context).size.width),
        )),
      ],
    );
  }
}

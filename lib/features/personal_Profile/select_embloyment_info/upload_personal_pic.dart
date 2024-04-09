import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class UploadPersonalPicScreen extends StatefulWidget {
  const UploadPersonalPicScreen({super.key});

  @override
  State<UploadPersonalPicScreen> createState() =>
      _SelectEmploymentScreensState();
}

class _SelectEmploymentScreensState extends State<UploadPersonalPicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SelcetEmploymentScreenItems(
          buttonTextakePhoto: StringsManger.pleaseUploadPersonalPic,
          buttonText: StringsManger.submit,
          onTap: () {
            Navigator.of(context)
                .pushNamed(ConstantsRouteString.uploadPersonalPicScreen);
          },
          titleForEmploymentScreen: StringsManger.pleaseUploadYourPic,
          subTitle: StringsManger.requierdUploadYourPic,
          hitText: StringsManger.pleaseUploadPersonalPic,
          iconForHome: Icons.home,
          selectTap: () {},
          iconbackScreen: Icons.arrow_back_ios_sharp,
          onTapToiconbackScreen: () {
            Navigator.of(context).pop();
          },
        ),
      )),
    );
  }
}

class SelcetEmploymentScreenItems extends StatefulWidget {
  const SelcetEmploymentScreenItems({
    super.key,
    required this.iconForHome,
    this.iconbackScreen,
    required this.titleForEmploymentScreen,
    required this.subTitle,
    required this.hitText,
    required this.onTap,
    required this.selectTap,
    required this.buttonText,
    this.nameOfUser,
    this.onTapTakePhoto,
    this.onTapToiconbackScreen,
    this.buttonTextakePhoto,
  });

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
  final Function()? onTapTakePhoto;
  final String? buttonTextakePhoto;

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
                : SizedBox(),
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
          height: 40.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          padding: EdgeInsets.only(
            bottom: 10.h,
          ),
          width: MediaQuery.of(context).size.width - 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: ColorManger.buttonColor, blurRadius: 2),
            ],
          ),
          height: 200.h,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  // color: Colors.black.withOpacity(0.2),
                ),
                height: 100.h,
                child: Lottie.network(
                  "https://lottie.host/4a27add7-454c-4f56-9e23-da5b6c8ff9d3/oKhnp3jY0I.json",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.h),
                alignment: Alignment.bottomCenter,
                child: BottonClick(
                    colorBotton: ColorManger.buttonColor.withOpacity(0.3),
                    onTap: widget.onTapTakePhoto,
                    borderRadius: BorderRadius.circular(10),
                    alignment: Alignment.center,
                    text: "${widget.buttonTextakePhoto}",
                    width: MediaQuery.of(context).size.width / 1.6),
              )
            ],
          ),
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

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({
    super.key,
    required PageController pageController,
    required this.index,
  }) : _pageController = pageController;

  final PageController _pageController;
  final int index;
  @override
  Widget build(BuildContext context) {
//
// this positioned widget is for the next button in the intro screens
//
    return Positioned(
      right: 0,
      left: 0,
      bottom: 28.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: GestureDetector(
          onTap: () {
            if (index == 2) {
              // Navigate to regester screen
            } else {
              // Move to the next page

              _pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: ColorManger.buttonColor,
              borderRadius: BorderRadius.circular(7.r),
            ),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width - 40.w,
            height: 42.h,
            child: Text(
              index == 2 ? StringsManger.getStart : StringsManger.next,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

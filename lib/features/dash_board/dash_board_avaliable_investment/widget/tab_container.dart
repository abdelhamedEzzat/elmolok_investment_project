import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabContainer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const TabContainer({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: ColorManger.buttonColor.withOpacity(0.7)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TabButton(
              index: 0,
              currentIndex: currentIndex,
              onTap: onTap,
              text: StringsManger.solid,
            ),
          ),
          SizedBox(width: 5.w),
          // Expanded(
          //   child: TabButton(
          //     index: 1,
          //     currentIndex: currentIndex,
          //     onTap: onTap,
          //     text: 'Tab 2',
          //   ),
          // ),
          SizedBox(width: 5.w),
          Expanded(
            child: TabButton(
              index: 1,
              currentIndex: currentIndex,
              onTap: onTap,
              text: StringsManger.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final int index;
  final int currentIndex;
  final Function(int) onTap;
  final String text;

  const TabButton({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: index == currentIndex ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
            child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: index == currentIndex ? Colors.white : Colors.black,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class ColoredScreen extends StatelessWidget {
  final Color color;
  final String text;

  const ColoredScreen({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(child: Text(text)),
    );
  }
}

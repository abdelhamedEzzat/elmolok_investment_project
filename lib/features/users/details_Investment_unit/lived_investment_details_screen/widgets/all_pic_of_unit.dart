import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AllPicOfUnit extends StatefulWidget {
  AllPicOfUnit({
    super.key,
    required this.selectedIndex,
  });
  int selectedIndex;
  @override
  State<AllPicOfUnit> createState() => _AllPicOfUnitState();
}

class _AllPicOfUnitState extends State<AllPicOfUnit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemExtent: 100.w,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          double radius = 40.0.w + (widget.selectedIndex - index) * 2.0;
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedIndex = index;
              });
            },
            child: CircleAvatar(
              radius: radius,
              backgroundColor: index == widget.selectedIndex
                  ? ColorManger.buttonColor.withOpacity(0.7)
                  : ColorManger.buttonColor.withOpacity(0.2),
              child: CircleAvatar(
                radius: 38.0.w,
                backgroundImage: const AssetImage(
                  'assets/NYC3.jpg',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

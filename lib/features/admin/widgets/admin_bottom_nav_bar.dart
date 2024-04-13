import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AdminBottomNavigationBar extends StatefulWidget {
  const AdminBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<AdminBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorManger.buttonColor.withOpacity(0.3),
            blurRadius: 4,
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            tabMargin: EdgeInsets.zero,
            gap: 2,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            color: ColorManger.buttonColor.withOpacity(0.5),
            activeColor: Colors.white,
            tabBackgroundColor: ColorManger.buttonColor,
            textSize: 20.h,
            iconSize: 20.h,
            selectedIndex: widget.currentIndex,
            onTabChange: widget.onTap,
            tabs: [
              GButton(
                onPressed: () => widget.onTap(0),
                icon: Icons.dashboard,
                text: StringsManger.dashboard,
              ),
              GButton(
                onPressed: () => widget.onTap(1),
                icon: Icons.home,
                text: StringsManger.units,
              ),
              GButton(
                onPressed: () => widget.onTap(2),
                icon: Icons.chat_sharp,
                text: StringsManger.customerChat,
              ),
              GButton(
                onPressed: () => widget.onTap(3),
                icon: Icons.supervised_user_circle,
                text: StringsManger.users,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

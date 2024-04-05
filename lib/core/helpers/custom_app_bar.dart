import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title, this.leading, this.onPressed});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  final Widget? title;
  final Widget? leading;
  final void Function()? onPressed;
  @override
  Size get preferredSize => const Size.fromHeight(65);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.h,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      surfaceTintColor: ColorManger.buttonColor,

      title: Center(child: widget.title),
      titleTextStyle: TextStyle(
        fontSize: 14.sp,
      ),
      leading: widget.leading,
      iconTheme: IconThemeData(size: 18.h, color: Colors.white),
      elevation: 0,
      backgroundColor:
          ColorManger.buttonColor, // Set the desired background color

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: widget.onPressed,
          ),
        ),
      ],
    );
  }
}

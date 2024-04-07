import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constans/colors/color_manger.dart';

class PersonalPic extends StatelessWidget {
  const PersonalPic({
    super.key,
    this.personalPicIcon,
  });
  final IconData? personalPicIcon;
  @override
  Widget build(BuildContext context) {
    return personalPicIcon != null
        ? CircleAvatar(
            radius: 30.h,
            backgroundColor: ColorManger.buttonColor,
            child: Icon(
              personalPicIcon,
              color: Colors.white,
            ),
          )
        : const SizedBox();
  }
}

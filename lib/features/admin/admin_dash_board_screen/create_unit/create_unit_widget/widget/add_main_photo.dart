import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMainPhotoForUnit extends StatelessWidget {
  const AddMainPhotoForUnit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.w),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                offset: const Offset(0, 2),
                color: ColorManger.appBarColor.withOpacity(0.3)),
          ]),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "اضف الصوره الرئيسيه للوحده",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.w),
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.add_a_photo,
              size: 30.sp,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutThisProperty extends StatelessWidget {
  const AboutThisProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      padding:
          EdgeInsets.only(bottom: 10.h, top: 10.h, right: 20.w, left: 20.w),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: ColorManger.buttonColor, blurRadius: 2),
        ],
      ),
      child: Column(
        children: [
          const AboutThisPropertyItems(
            titleOfPropertyItems: StringsManger.aboutThisProperty,
            subTitleOfPropertyItems:
                " لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم للنص افتراضي يوضع في التصاميم للنص او زر العديد من النصوص الاخرى. لوريم ايبسوم هو نموذج افتراضي يوضع في العديد من النصوص الاخرى العديدالعديد..",
            readMoreOfPropertyItems: "اقرأ المزيد",
          ),
          SizedBox(
            height: 15.h,
          ),
          const AboutThisPropertyItems(
            titleOfPropertyItems: StringsManger.whyYouShouldINVEST,
            subTitleOfPropertyItems:
                " لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم للنص افتراضي يوضع في التصاميم للنص او زر العديد من النصوص الاخرى. لوريم ايبسوم هو نموذج افتراضي يوضع في العديد من النصوص الاخرى العديدالعديد..",
            readMoreOfPropertyItems: "اقرأ المزيد",
          ),
        ],
      ),
    );
  }
}

class AboutThisPropertyItems extends StatelessWidget {
  const AboutThisPropertyItems({
    super.key,
    required this.titleOfPropertyItems,
    required this.subTitleOfPropertyItems,
    required this.readMoreOfPropertyItems,
  });
  final String titleOfPropertyItems;
  final String subTitleOfPropertyItems;
  final String readMoreOfPropertyItems;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          titleOfPropertyItems,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          subTitleOfPropertyItems,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.normal,
          ),
          textDirection: TextDirection.rtl,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          readMoreOfPropertyItems,
          style: TextStyle(
            color: ColorManger.buttonColor,
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        )
      ],
    );
  }
}

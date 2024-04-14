import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyKeysInfo extends StatelessWidget {
  const PropertyKeysInfo({
    super.key,
  });

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
          Container(
            alignment: Alignment.centerRight,
            child: Text(StringsManger.propertyKeyInfo,
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 15.h,
          ),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.business,
            titleOfPropertyKey: "سعر مخفض",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.location_on_outlined,
            titleOfPropertyKey: " مشروع التجديد",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.business_center_sharp,
            titleOfPropertyKey: "عائد جذاب",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
          const PropertyKeyItems(
            iconOfPropertyKey: Icons.checklist,
            titleOfPropertyKey: "زياده سريعه",
            subtitleOfPropertyKey:
                "سعر مخفض الذي للحصول علي الوحدة في هذا العام",
          ),
          SizedBox(
            height: 10.w,
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class PropertyKeyItems extends StatelessWidget {
  const PropertyKeyItems({
    super.key,
    required this.titleOfPropertyKey,
    required this.subtitleOfPropertyKey,
    required this.iconOfPropertyKey,
  });
  final String titleOfPropertyKey;
  final String subtitleOfPropertyKey;
  final IconData iconOfPropertyKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.end, // Align items to the end (right side)
      children: [
        // Add some space between the icon and text
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.end, // Align text to the end (right side)
          children: [
            Text(
              titleOfPropertyKey,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: ColorManger.buttonColor,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(
                subtitleOfPropertyKey,
                textDirection: TextDirection.rtl,
                style:
                    TextStyle(fontSize: 10.sp, fontWeight: FontWeight.normal),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10.w,
        ),
        const SizedBox(width: 8),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: ColorManger.buttonColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(iconOfPropertyKey, color: ColorManger.buttonColor),
        ),
      ],
    );
  }
}

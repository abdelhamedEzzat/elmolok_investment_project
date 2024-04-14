import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListExpintionFinancials extends StatelessWidget {
  const ListExpintionFinancials({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "الماليات",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          const ExpansionTileForFinancial(
            icon: Icons.monetization_on,
            title: "المعاملات",
            subtitle: "AED 0.00",
          ),
          SizedBox(
            height: 15.h,
          ),
          const ExpansionTileForFinancial(
            icon: Icons.check_box_sharp,
            title: "العائد",
            subtitle: "AED 0.00",
          )
        ],
      ),
    );
  }
}

class ExpansionTileForFinancial extends StatelessWidget {
  const ExpansionTileForFinancial({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  final String title;
  final String subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey),
              top: BorderSide(color: Colors.grey),
              left: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey)),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      //padding: const EdgeInsets.all(1.0),
      child: ExpansionTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: ColorManger.buttonColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(icon, color: ColorManger.buttonColor),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 10.sp),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 10.sp),
        ),
      ),
    );
  }
}

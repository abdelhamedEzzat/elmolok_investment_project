import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/customer_servises/updates_screen/widgets/update_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class UpdateItemsWidget extends StatefulWidget {
  UpdateItemsWidget({super.key, required this.customTileExpanded});
  bool customTileExpanded;
  @override
  State<UpdateItemsWidget> createState() => _UpdateItemsWidgetState();
}

class _UpdateItemsWidgetState extends State<UpdateItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        textAlign: TextAlign.end,
        // StringsManger.unitName,
        " غرقه بفندق سيتي ستارز ماستر",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12.sp,
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            //  StringsManger.updateTime,
            "5-7-2022  12:00pm",
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 10.sp,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(
            Icons.av_timer_rounded,
            size: 15.sp,
          ),
        ],
      ),
      trailing: Icon(
        widget.customTileExpanded
            ? Icons.arrow_drop_down_circle
            : Icons.arrow_drop_down,
        color: ColorManger.appBarColor,
      ),
      children: <Widget>[
        const Divider(),
        SizedBox(
          height: 5.h,
        ),
        const UpdatesItems(
          mainText: StringsManger.unitName,
          discriptionText: " غرقه بفندق سيتي ستارز ماستر",
        ),
        SizedBox(
          height: 5.h,
        ),
        const UpdatesItems(
          mainText: StringsManger.updateType,
          discriptionText: "تحديث مالي",
        ),
        SizedBox(
          height: 5.h,
        ),
        const UpdatesItems(
          mainText: StringsManger.moreUpdateDetails,
          discriptionText:
              "تحديث يخص الماليات للوحده السكنيه تحديث يخص الماليات للوحده السكنيه تحديث يخص الماليات للوحده السكنيه تحديث يخص الماليات للوحده السكنيه تحديث يخص الماليات للوحده السكنيه ",
        ),
      ],
      onExpansionChanged: (bool expanded) {
        setState(() {
          widget.customTileExpanded = expanded;
        });
      },
    );
  }
}

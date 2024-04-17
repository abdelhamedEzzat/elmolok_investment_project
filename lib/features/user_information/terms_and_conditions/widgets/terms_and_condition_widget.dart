import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/user_information/widget/main_icon_detatils_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionWidget extends StatefulWidget {
  final bool isAccepted;
  final Function(bool) onAcceptedChanged;
  const TermsAndConditionWidget(
      {super.key, required this.isAccepted, required this.onAcceptedChanged});

  @override
  State<TermsAndConditionWidget> createState() =>
      _TermsAndConditionWidgetState();
}

class _TermsAndConditionWidgetState extends State<TermsAndConditionWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: const BackButton(),
          ),
          const MainIconInDetailsScreen(icon: Icons.key),
        ],
      ),
      Text.rich(TextSpan(children: [
        TextSpan(
          text: StringsManger.our,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: StringsManger.termsAndConditions,
          style: TextStyle(
              color: ColorManger.buttonColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold),
        )
      ])),
      Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                fillColor: MaterialStateProperty.resolveWith((states) {
                  if (!states.contains(MaterialState.selected)) {
                    return Colors.white;
                  }
                  return null;
                }),
                side: BorderSide(
                    color: ColorManger.buttonColor.withOpacity(0.3), width: 2),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                    widget.onAcceptedChanged(isChecked);
                  });
                }),
            Text(
              StringsManger.acceptedTermsandConditions,
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
            Text(
              StringsManger.readTermsandConditions,
              style: TextStyle(
                  color: ColorManger.buttonColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ]);
  }
}

import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class keyInvestmentInformation extends StatelessWidget {
  const keyInvestmentInformation({
    super.key,
    required this.keysHintText,
    required this.keysContainerText,
  });
  final String keysHintText;
  final String keysContainerText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 5,
            child: CustomTextFormField(
              hintText: keysHintText,
              border: const OutlineInputBorder(),
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
            )),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.w),
                  ),
                  color: Colors.white,
                  border: const Border(
                      bottom: BorderSide(color: Colors.grey),
                      top: BorderSide(color: Colors.grey),
                      left: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey))),
              height: 42.h,
              child: Center(
                child: Text(
                  keysContainerText,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ))
      ],
    );
  }
}

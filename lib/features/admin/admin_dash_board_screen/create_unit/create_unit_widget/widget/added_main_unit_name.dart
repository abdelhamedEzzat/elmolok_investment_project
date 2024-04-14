import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddedMainUnitName extends StatelessWidget {
  const AddedMainUnitName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            StringsManger.mainNameOfunit,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.w),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const CustomTextFormField(
          hintText: StringsManger.addMainNameOfunit,
          border: OutlineInputBorder(),
          padding: EdgeInsets.symmetric(horizontal: 3.0),
        )
      ],
    );
  }
}

import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatesDetails extends StatelessWidget {
  const UpdatesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text(StringsManger.updates)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomTextFormField(hintText: "عنوان التحديث"),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomTextFormField(
                    hintText: "تفاصيل التحديث",
                    minLines: 3,
                    maxLines: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

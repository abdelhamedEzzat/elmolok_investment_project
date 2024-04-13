import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/features/customer_servises/updates_screen/widgets/main_update_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Align(
            alignment: Alignment.centerLeft,
            child: Text(StringsManger.updates,
                style: TextStyle(fontWeight: FontWeight.bold))),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: ColorManger.buttonColor, blurRadius: 2)
              ]),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  UpdateItem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

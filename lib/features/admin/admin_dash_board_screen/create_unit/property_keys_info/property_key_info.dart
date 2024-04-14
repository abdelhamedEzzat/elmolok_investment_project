import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/property_keys_info/widgets/drop_down_button.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/widgets/build_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertysKeysInfo extends StatefulWidget {
  const PropertysKeysInfo({super.key});

  @override
  State<PropertysKeysInfo> createState() => _PropertysKeysInfoState();
}

class _PropertysKeysInfoState extends State<PropertysKeysInfo> {
  List<Widget> textFields = [];
  bool isBuild = false;
  List<dynamic> iconsList = [
    Icons.home,
    Icons.work,
    Icons.school,

    // Add more icons as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Center(
          child: Text(StringsManger.createUnit),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SlidersWidget(
              color2: ColorManger.buttonColor,
              colors: [
                ColorManger.buttonColor.withOpacity(0.2),
                ColorManger.buttonColor.withOpacity(0.2),
                ColorManger.buttonColor.withOpacity(0.2),
              ],
            ),
            SizedBox(height: 5.h),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      StringsManger.propertyKeysInfo,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.w,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Column(
                    children: textFields,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          textFields.add(_buildTextField());
                          isBuild = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            _buildDefaultContent(),
                            // ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      )),
                  isBuild == true
                      ? BuildItems(onTap: () {
                          Navigator.of(context).pushNamed(
                              ConstantsRouteString.expectedReturnedAdminScreen);
                        })
                      : Container(),
                ],
              )),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            DropdownButtonExample(),
            SizedBox(
              height: 5,
            ),
            CustomTextFormField(hintText: StringsManger.firstIntroTitle),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(hintText: StringsManger.submit),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }

  Widget _buildDefaultContent() {
    return Container(
      alignment: Alignment.centerRight,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 4, offset: Offset(0, 4))
      ]),
      padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringsManger.addNewinvestmentKey,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
          SizedBox(width: 5),
          Icon(
            Icons.add_box,
            size: 30,
          ),
        ],
      ),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/slider_widget.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/widget/add_hashtag.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/widget/add_main_photo.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/widget/added_main_unit_name.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/create_unit/create_unit_widget/widget/key_investment_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateUnit extends StatefulWidget {
  const CreateUnit({super.key});

  @override
  State<CreateUnit> createState() => _CreateUnitState();
}

class _CreateUnitState extends State<CreateUnit> {
  List<String> selected = [];
  late TextEditingController manualHashTagController;

  @override
  void initState() {
    super.initState();
    manualHashTagController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Center(child: Text(StringsManger.createUnit)),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 20.w, left: 20.w),
        child: Column(
          children: [
            SlidersWidget(
              color1: ColorManger.buttonColor,
              colors: [
                ColorManger.buttonColor.withOpacity(0.2),
                ColorManger.buttonColor.withOpacity(0.2),
                ColorManger.buttonColor.withOpacity(0.2),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        StringsManger.mainUnitInformation,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.w),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const AddMainPhotoForUnit(),
                    SizedBox(
                      height: 10.h,
                    ),
                    HashTagWidget(
                      controller: manualHashTagController,
                      selected: selected,
                    ),
                    const AddedMainUnitName(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        StringsManger.keyInvestmentInformation,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.annualRentalyield,
                      keysHintText: StringsManger.annualRentalyield,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.netRentalyield,
                      keysHintText: StringsManger.netRentalyield,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.annualizedReturn,
                      keysHintText: StringsManger.annualizedReturn,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.totalExpectedRetutn,
                      keysHintText: StringsManger.totalExpectedRetutn,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.funded,
                      keysHintText: StringsManger.funded,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const keyInvestmentInformation(
                      keysContainerText: StringsManger.unitPrice,
                      keysHintText: StringsManger.unitPrice,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BottonClick(
                        borderRadius: BorderRadius.circular(8.0),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(ConstantsRouteString.propertyKeysInfo);
                        },
                        text: StringsManger.next),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

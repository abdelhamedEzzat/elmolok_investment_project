import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/users/dash_board/widget/custam_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SolidInvestmentScreen extends StatelessWidget {
  const SolidInvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          CustomContainerForTable(
            initText: StringsManger.thereAreNoRecoredsToShow,
            columnName2: StringsManger.propertySolidPrice,
            thcolumnWid2: 45.w,
            thcolumnWid0: 80.w,
            columnName3: StringsManger.proprety,
            columnName4: StringsManger.solidDate,
            fontSize: 14.sp,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

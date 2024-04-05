import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/home/widget/Image_for_investment_item.dart';
import 'package:elmolak_investment_app/features/home/widget/funded_tap_widget/custom_details_funded_units.dart';
import 'package:elmolak_investment_app/features/home/widget/hashtag_for_unit.dart';
import 'package:elmolak_investment_app/features/home/widget/tapbar/title_for_unit.dart';
import 'package:elmolak_investment_app/features/home/widget/unit_number.dart';
import 'package:elmolak_investment_app/features/home/widget/unit_price.dart';
import 'package:elmolak_investment_app/features/home/widget/unit_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFundedItems extends StatelessWidget {
  const HomeFundedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15.h,
        left: 1,
        right: 1,
        bottom: 3,
      ),
      padding: EdgeInsets.only(
        bottom: 12.h,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.w),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: const Offset(0, 4),
                color: ColorManger.appBarColor.withOpacity(0.3))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Stack(
            children: [
              ImageForHomeItemInvestment(
                image: "assets/istockphoto-160641325-612x612.jpg",
              ),
              UnitNumber(
                unitNum: "sx-245",
              ),
              UnitStatus(
                unitStat: StringsManger.exited,
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          const HashTagForUnit(),
          SizedBox(
            height: 5.h,
          ),
          const TitleForUnit(
            unitTitle: " برج براديس , في مارينا دبي",
          ),
          SizedBox(
            height: 5.h,
          ),
          const CustomDetailsFundedUnits(),
          SizedBox(
            height: 5.h,
          ),
          const UnitPrice(
            unitPriceName: StringsManger.rentalIncomePaidtodate,
            currancyOfPriceUnit: "UED",
            totalPriceUnit: "4.345",
          )
        ],
      ),
    );
  }
}

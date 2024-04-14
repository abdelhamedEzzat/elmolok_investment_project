import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/users/home/widget/Image_for_investment_item.dart';
import 'package:elmolak_investment_app/features/users/home/widget/custom_details_item.dart';
import 'package:elmolak_investment_app/features/users/home/widget/hashtag_for_unit.dart';
import 'package:elmolak_investment_app/features/users/home/widget/live_tap_widget/chart_of_funded.dart';
import 'package:elmolak_investment_app/features/users/home/widget/tapbar/title_for_unit.dart';
import 'package:elmolak_investment_app/features/users/home/widget/unit_number.dart';
import 'package:elmolak_investment_app/features/users/home/widget/unit_price.dart';
import 'package:elmolak_investment_app/features/users/home/widget/unit_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLiveItems extends StatefulWidget {
  const HomeLiveItems({
    super.key,
  });

  @override
  State<HomeLiveItems> createState() => _HomeLiveItemsState();
}

class _HomeLiveItemsState extends State<HomeLiveItems> {
  List<String> items = ["1", '2', '3'];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ConstantsRouteString.livedInvestmentDetailsScreen);
      },
      child: Container(
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
                  image: "assets/NYC3.jpg",
                ),
                UnitNumber(
                  unitNum: "sc-139",
                ),
                UnitStatus(
                  unitStat: StringsManger.live,
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
              unitTitle: "سرير واحد في برج براديس , في مارينا دبي",
            ),
            SizedBox(
              height: 5.h,
            ),
            const CustomDetailsItems(),
            SizedBox(
              height: 10.h,
            ),
            const ChartOfFunded(),
            SizedBox(
              height: 10.h,
            ),
            const UnitPrice(
              unitPriceName: StringsManger.unitPrice,
              currancyOfPriceUnit: "USD",
              totalPriceUnit: "1,350,000",
            )
          ],
        ),
      ),
    );
  }
}

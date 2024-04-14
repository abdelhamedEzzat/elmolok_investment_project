// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/about_this_property.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/all_pic_of_unit.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/developer.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/expected_return_widget.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/investment_calculator.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/list_expintion_financials.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/main_unit_information.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/property_keys_info.dart';
import 'package:elmolak_investment_app/features/users/details_Investment_unit/lived_investment_details_screen/widgets/property_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';

class LivedInvestmentDetailsScreen extends StatefulWidget {
  const LivedInvestmentDetailsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InvestmentDetailsScreenState createState() =>
      _InvestmentDetailsScreenState();
}

class _InvestmentDetailsScreenState
    extends State<LivedInvestmentDetailsScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showTitle = false;
  final int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _showTitle = _scrollController.offset > 125.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showTitle
          ? const CustomAppBar(
              title: Center(
                child: Text("St-139"),
              ),
            )
          : null,
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                pinned: false,
                floating: false,
                expandedHeight: 175.0,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      "assets/NYC3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    AllPicOfUnit(
                      selectedIndex: _selectedIndex,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const MainUnitInformation(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const PropertyKeysInfo(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const ExpectedReturnWidget(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const AboutThisProperty(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const ListExpintionFinancials(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const InvestmentCalculator(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const PropertyLocation(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const Developer(),
                    SizedBox(
                      height: 60.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h, right: 20.w, left: 20.w),
                child: BottonClick(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  text: StringsManger.investmentNow,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(
                        ConstantsRouteString.firstSelectEmploymentScreens);
                  },
                ),
              )),
        ],
      ),
    );
  }
}

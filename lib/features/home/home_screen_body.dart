import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_drawer.dart';
import 'package:elmolak_investment_app/features/home/widget/filtter.dart';
import 'package:elmolak_investment_app/features/home/widget/tapbar/tap_bar_view.dart';
import 'package:elmolak_investment_app/features/home/widget/tapbar/tap_bar_wiget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with TickerProviderStateMixin {
  bool isLoading = true;
  late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      key: _scaffoldKey,
      appBar: const CustomAppBar(
        title: Center(
          child: Text(
            "${StringsManger.hello} ${StringsManger.nameOfUser}",
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
          child: Column(children: [
            const FillterWidget(),

            TabBarWidget(tabController: _tabController),

            TabBarViewWidget(tabController: _tabController),

            // ]),
          ]),
        ),
      ),
    );
  }
}

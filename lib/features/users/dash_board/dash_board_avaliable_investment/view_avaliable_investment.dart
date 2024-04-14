import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/features/users/dash_board/dash_board_avaliable_investment/widget/primary_investment_screen.dart';
import 'package:elmolak_investment_app/features/users/dash_board/dash_board_avaliable_investment/widget/soild_investment_screen.dart';
import 'package:elmolak_investment_app/features/users/dash_board/dash_board_avaliable_investment/widget/tab_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewAvaliableInvestment extends StatefulWidget {
  const ViewAvaliableInvestment({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ViewAvailableInvestmentState createState() =>
      _ViewAvailableInvestmentState();
}

class _ViewAvailableInvestmentState extends State<ViewAvaliableInvestment> {
  late PageController _pageController;
  int _currentPageIndex = 2;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Center(child: Text(StringsManger.availableInvestments)),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            TabContainer(
              currentIndex: _currentPageIndex,
              onTap: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
                _pageController.jumpToPage(_currentPageIndex);
              },
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: const [
                  // Screen 1
                  SingleChildScrollView(child: SolidInvestmentScreen()),

                  SingleChildScrollView(child: PrimaryInvestmentScreen()),
                  //  ColoredScreen(color: Colors.blue, text: 'Screen 1'),

                  // Screen 2
                  // ColoredScreen(color: Colors.green, text: 'Screen 2'),

                  // Screen 3
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

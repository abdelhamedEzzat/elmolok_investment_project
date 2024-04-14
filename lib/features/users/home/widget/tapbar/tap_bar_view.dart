import 'package:elmolak_investment_app/features/users/home/widget/animated_list.dart';
import 'package:elmolak_investment_app/features/users/home/widget/exiting_tap_widgets/animated_exiting_widget.dart';
import 'package:elmolak_investment_app/features/users/home/widget/funded_tap_widget/animated_funded_widget.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AnimateList(),

          AnimatedExitingWidget(),
          // Content for the third tab
          AnimatedFundedWidget()
        ],
      ),
    );
  }
}

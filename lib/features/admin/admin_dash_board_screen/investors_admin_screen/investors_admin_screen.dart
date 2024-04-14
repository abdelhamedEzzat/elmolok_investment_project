import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/investors_admin_screen/widgets/investors_screen_widget.dart';
import 'package:flutter/material.dart';

class InvestorsAdminScreen extends StatefulWidget {
  const InvestorsAdminScreen({super.key});

  @override
  State<InvestorsAdminScreen> createState() => _InvestorsAdminScreenState();
}

class _InvestorsAdminScreenState extends State<InvestorsAdminScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            StringsManger.investores,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: InvestorsScreen(),
    );
  }
}

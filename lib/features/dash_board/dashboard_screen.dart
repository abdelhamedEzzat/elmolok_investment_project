import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: Text(StringsManger.dashboard),
      ),
      body: Center(
        child: Text("DashBoard screen"),
      ),
    );
  }
}
// dashboard_screen
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_drawer.dart';
import 'package:flutter/material.dart';

class UserChat extends StatelessWidget {
  const UserChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: Text("الدعم"),
      ),
      body: Center(
        child: Text("chat screen"),
      ),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_drawer.dart';
import 'package:flutter/material.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        title: Text(StringsManger.personalprofile),
      ),
      body: Center(
        child: Text("PersonalProfile screen"),
      ),
    );
  }
}

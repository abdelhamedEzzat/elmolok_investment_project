import 'package:elmolak_investment_app/features/registration_screen/login_screen/widget/login_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: LoginBody(),
        ),
      ),
    );
  }
}

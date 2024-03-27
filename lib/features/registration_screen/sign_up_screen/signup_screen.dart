import 'package:elmolak_investment_app/features/registration_screen/sign_up_screen/widget/signup_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SignUpBody(),
        ),
      ),
    );
  }
}

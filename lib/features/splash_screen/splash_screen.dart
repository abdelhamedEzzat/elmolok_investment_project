import 'package:elmolak_investment_app/features/splash_screen/widgets/logo_with_animaton.dart';
import 'package:elmolak_investment_app/features/splash_screen/widgets/static_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
          seconds: 15), // Adjust total animation duration as needed
    );

    // Delay animation start after 6 seconds
    Future.delayed(const Duration(seconds: 6), () {
      _animationController.forward();
    });

    // Navigate to home screen after animation completes
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, '/FirstIntroScreen');
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const StaticLogo(),
            LogoWithAnmation(animationController: _animationController),
          ],
        ),
      ),
    );
  }
}

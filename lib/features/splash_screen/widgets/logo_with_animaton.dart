import 'package:elmolak_investment_app/core/constans/images.dart';
import 'package:elmolak_investment_app/core/strings/strings.dart';
import 'package:flutter/material.dart';

class LogoWithAnmation extends StatelessWidget {
  const LogoWithAnmation({
    super.key,
    required AnimationController animationController,
  }) : _animationController = animationController;

  final AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double opacity = _animationController.value < 0.5
            ? _animationController.value * 2
            : (1 - _animationController.value) * 2;
        return AnimatedOpacity(
          opacity: opacity,
          duration:
              const Duration(seconds: 1), // Adjust fade duration as needed
          child: child,
        );
      },
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero, // Slide from center
          end: const Offset(1, 0), // Slide to right
        ).animate(CurvedAnimation(
          parent: _animationController,
          curve: Curves.easeInOut,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageManger.appLogo,
              width: MediaQuery.of(context).size.width - 40,
            ),
            const SizedBox(height: 20),
            const Text(
              StringManager.appName,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:elmolak_investment_app/core/constans/images.dart';
import 'package:elmolak_investment_app/core/strings/strings.dart';
import 'package:flutter/material.dart';

class StaticLogo extends StatelessWidget {
  const StaticLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: 1.0,
          duration: const Duration(seconds: 4),
          curve: Curves.easeInOut,
          child: Image.asset(
            ImageManger.appLogo,
            width: MediaQuery.of(context).size.width - 40,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          StringManager.appName,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

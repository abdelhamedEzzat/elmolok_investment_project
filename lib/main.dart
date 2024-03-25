import 'package:device_preview/device_preview.dart';
import 'package:elmolak_investment_app/features/intro_screens/first_intro_screen.dart';
import 'package:elmolak_investment_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      // Define your home screen route here
      routes: {
        '/FirstIntroScreen': (context) => const FirstIntroScreen(),
      },
    );
  }
}

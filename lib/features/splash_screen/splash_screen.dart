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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: 1.0,
                  duration: const Duration(seconds: 4),
                  curve: Curves.easeInOut,
                  child: Image.asset(
                    "assets/logoAlmolak.png",
                    width: MediaQuery.of(context).size.width - 40,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "المُلاك",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                double opacity = _animationController.value < 0.5
                    ? _animationController.value * 2
                    : (1 - _animationController.value) * 2;
                return AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(
                      seconds: 1), // Adjust fade duration as needed
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
                      "assets/logoAlmolak.png",
                      width: MediaQuery.of(context).size.width - 40,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "المُلاك",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

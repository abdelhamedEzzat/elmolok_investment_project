import 'package:elmolak_investment_app/core/constans/image/images_manager.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/features/intro_screens/model/intro_model.dart';
import 'package:elmolak_investment_app/features/intro_screens/widgets/icon_button.dart';
import 'package:elmolak_investment_app/features/intro_screens/widgets/intro_images_title_descreption.dart';
import 'package:elmolak_investment_app/features/intro_screens/widgets/skip_botton.dart';
import 'package:flutter/material.dart';

class FirstIntroScreen extends StatefulWidget {
  const FirstIntroScreen({super.key});

  @override
  State<FirstIntroScreen> createState() => _FirstIntroScreenState();
}

class _FirstIntroScreenState extends State<FirstIntroScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      StringsManger.firstIntroTitle,
      StringsManger.secondIntroTitle,
      StringsManger.thirdIntroTitle,
    ];
    List<String> description = [
      StringsManger.firstIntroDescription,
      StringsManger.secondIntroDescription,
      StringsManger.thirdIntroDescription,
    ];

    List<String> lottieImages = [
      ImagesManager.firstIntroImage,
      ImagesManager.secondIntroImage,
      ImagesManager.thirdIntroImage
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController, // Using the controller here
        itemCount: title.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Stack(
            children: [
              const SkipBotton(),
              LottieImagesAndTitleAndDescribtion(
                introModel: IntroModel(
                  lottieImages: lottieImages,
                  title: title,
                  description: description,
                  currentIndex: currentIndex,
                ),
                index: index,
              ),
              IntroButton(
                pageController: _pageController,
                index: index,
              ),
            ],
          );
        },
      ),
    );
  }
}

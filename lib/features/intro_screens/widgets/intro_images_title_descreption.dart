import 'package:elmolak_investment_app/features/intro_screens/model/intro_model.dart';
import 'package:elmolak_investment_app/features/intro_screens/widgets/circle_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LottieImagesAndTitleAndDescribtion extends StatelessWidget {
  const LottieImagesAndTitleAndDescribtion({
    super.key,
    required this.introModel,
    required this.index,
  });

  final IntroModel introModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
          introModel.lottieImages[index],
          reverse: true,
          repeat: true,
          frameRate: FrameRate.max,
          fit: BoxFit.cover,
          height: 280.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                introModel.title[index],
                style: TextStyle(
                  fontSize: 24.w,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                textAlign: TextAlign.center,
                introModel.description[index],
                style: TextStyle(
                  fontSize: 14.w,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        CircleAnimation(currentIndex: introModel.currentIndex),
      ],
    );
  }
}

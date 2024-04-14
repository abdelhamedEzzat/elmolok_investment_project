import 'package:elmolak_investment_app/features/users/home/widget/exiting_tap_widgets/home_exited_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedExitingWidget extends StatelessWidget {
  const AnimatedExitingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (context, index) {
        return AnimationConfiguration.staggeredList(
          position: index,
          duration: const Duration(milliseconds: 750),
          child: const SlideAnimation(
            verticalOffset: 100.0,
            child: FadeInAnimation(
              child: HomeExitedItems(),
            ),
          ),
        );
      },
    );
  }
}

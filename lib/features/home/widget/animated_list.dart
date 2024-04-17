import 'package:elmolak_investment_app/features/home/widget/live_tap_widget/home_live_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimateList extends StatefulWidget {
  const AnimateList({
    super.key,
  });

  @override
  State<AnimateList> createState() => _AnimateListState();
}

class _AnimateListState extends State<AnimateList> {
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
              child: HomeLiveItems(),
            ),
          ),
        );
      },
    );
  }
}

import 'package:Bloggios/containers/splash_screen/widgets/ImageScrollerWidget.dart';
import 'package:flutter/material.dart';

class AnimatedScrollableImages extends StatelessWidget {
  const AnimatedScrollableImages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageScrollerWidget(startingIndex: 0),
        ImageScrollerWidget(startingIndex: 1),
        ImageScrollerWidget(startingIndex: 2)
      ],
    );
  }
}
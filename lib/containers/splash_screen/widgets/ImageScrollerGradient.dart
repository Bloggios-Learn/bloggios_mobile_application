import 'package:Bloggios/containers/splash_screen/widgets/SplashBottomContainer.dart';
import 'package:Bloggios/utils/Dimensions.dart';
import 'package:flutter/material.dart';

class ImageScrollerGradient extends StatelessWidget {
  const ImageScrollerGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.transparent,
            Colors.black.withOpacity(.0),
            Colors.black.withOpacity(.0),
            Colors.black,
            Colors.black,
            Colors.black
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: const SplashBottomContainerBody()
      ),
    );
  }
}
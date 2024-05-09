import 'package:Bloggios/containers/splash_screen/widgets/AnimatedScrollableImages.dart';
import 'package:Bloggios/containers/splash_screen/widgets/ImageScrollerGradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  static const String RouteName = "/splash";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SplashBackground(),
          AnimatedScrollableImages(),
          ImageScrollerGradient()
        ],
      ),
    );
  }
}

class SplashBackground extends StatefulWidget {
  const SplashBackground({super.key});

  @override
  State<SplashBackground> createState() => SplashBackgroundState();
}

class SplashBackgroundState extends State<SplashBackground> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SvgPicture.asset(
        'assets/svg/mass_circles.svg',
        fit: BoxFit.cover,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpalshScreen extends StatelessWidget {
  static const String RouteName = "/splash";
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SplashBackground()
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
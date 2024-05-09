import 'package:Bloggios/containers/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case SplashScreen.RouteName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text(
              'Wrong Route',
              style: TextStyle(
                fontSize: 25
              ),
            ),
          ),
        ),
      );
  }
}
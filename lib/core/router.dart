import 'package:bloggios_mobile_application/containers/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case SpalshScreen.RouteName:
      return MaterialPageRoute(builder: (context) => const SpalshScreen());
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
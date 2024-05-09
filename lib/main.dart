import 'package:Bloggios/containers/splash_screen/splash_screen.dart';
import 'package:Bloggios/core/router.dart';
import 'package:Bloggios/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bloggios",
      theme: AppTheme.lightThemeMode,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const SplashScreen(),
    );
  }
}
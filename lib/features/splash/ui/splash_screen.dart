import 'dart:async';
import 'package:bmw/core/constants/app_assets.dart';
import 'package:bmw/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacityLevel = 0.0;
  @override
  void initState() {
    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        opacityLevel = 1.0;
      });
    });
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        '/onboarding',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 1),
          child: Image.asset(AppAssets.appLogo),
        ),
      ),
    );
  }
}

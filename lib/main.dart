import 'package:bmw/features/auth/ui/login.dart';
import 'package:bmw/features/onboarding/ui/onboarding_screen.dart';
import 'package:bmw/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';

import 'features/home/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const BMWApp());
}

class BMWApp extends StatelessWidget {
  const BMWApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ADA APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'Brandon_Grotesque',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

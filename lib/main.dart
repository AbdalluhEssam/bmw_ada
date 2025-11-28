import 'package:bmw/features/advanced_ui/animate_dos.dart';
import 'package:bmw/features/advanced_ui/custom_scroll_view.dart';
import 'package:bmw/features/advanced_ui/test_widgets.dart';
import 'package:bmw/features/responsive_adaptive/adaptive_screen.dart';
import 'package:bmw/features/responsive_adaptive/responsive_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/auth/ui/login.dart';
import 'features/home/ui/home_screen.dart';
import 'features/onboarding/ui/onboarding_screen.dart';
import 'features/splash/ui/splash_screen.dart';

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

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: "ADA APP",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          fontFamily: 'Brandon_Grotesque',
        ),
        home: AnimateDos(),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => const SplashScreen(),
        //   '/login': (context) => const LoginScreen(),
        //   '/onboarding': (context) => const OnboardingScreen(),
        //   '/home': (context) => const HomeScreen(),
        // },
      ),
      // child: ResponsiveScreen(),
    );
  }
}

import 'package:bmw/core/constants/app_assets.dart';
import 'package:bmw/core/theme/app_colors.dart';
import 'package:bmw/core/widgets/custom_button.dart';
import 'package:bmw/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: AppColors.primaryColor,
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 12,
                children: [
                  Image.asset(AppAssets.onboardingImage1),
                  Image.asset(AppAssets.onboardingBackImage1),
                ],
              ),
            ),
          ),
          const SizedBox(height: 56.0),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColor,
                    ),
                  ),
                  const SizedBox(height: 56.0),
                  CustomButton(
                    title: "Let’s Continue",
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

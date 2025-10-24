import 'package:bmw/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../../home/ui/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();

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
                  Image.asset(AppAssets.authImage),
                  Image.asset(AppAssets.authBackImage),
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
                    "What is Your Firstname?",

                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 22.0),
                  CustomTextFormField(controller: nameController,),
                  const SizedBox(height: 56.0),
                  CustomButton(
                    title: "Start Ordering",
                    onPressed: () {
                      if (nameController.text.isNotEmpty) {
                        Navigator.pushReplacementNamed(
                          context,
                          "/home",
                          arguments: {"name": nameController.text},
                        );
                      } else {
                        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                          SnackBar(content: Text("Please enter your name")),
                        );
                      }
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

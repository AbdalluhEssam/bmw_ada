import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const CustomButton({super.key,required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        minimumSize: Size.fromHeight(56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),
    );
  }
}

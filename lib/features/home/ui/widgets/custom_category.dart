import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CustomCategory extends StatelessWidget {
  final String? title;
  final bool isActive;

  const CustomCategory({super.key, this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "Hottest",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,

            color: isActive == true ? AppColors.black : Color(0xff938DB5),
          ),
        ),
        if (isActive == true) SizedBox(height: 2),
        if (isActive == true)
          Container(width: 30, height: 3, color: AppColors.primaryColor),
      ],
    );
  }
}

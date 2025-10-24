import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Color? backgroundColor;
  final double? radius;
  final TextStyle? hintStyle;
  final  Widget? prefixIcon;


  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.backgroundColor,
    this.radius,
    this.hintStyle, this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? AppColors.textFormFieldBgColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? 10),
        ),
        hintText: hintText ?? "Tony",
        hintStyle:
            hintStyle ??
            TextStyle(
              color: AppColors.textFormColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        prefixIcon: prefixIcon,
      ),
    );
  }
}

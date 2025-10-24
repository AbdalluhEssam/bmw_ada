import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String? title;
  final Color? color;
  const CustomBox({super.key, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title ?? 'A',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    ;
  }
}

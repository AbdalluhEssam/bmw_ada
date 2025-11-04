import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

class CustomRocCard extends StatefulWidget {
  final String? price;
  final String? title;
  final String? imagePath;

  const CustomRocCard({super.key, this.price, this.title, this.imagePath});

  @override
  State<CustomRocCard> createState() => _CustomRocCardState();
}

class _CustomRocCardState extends State<CustomRocCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),

      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                  log("isFavorite: $isFavorite");
                });
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : AppColors.primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  widget.imagePath ?? AppAssets.honeyImage,
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 12),
                Text(
                  widget.title ?? "Honey lime combo",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "\$ ${widget.price ?? 2000}",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),

                    IconButton.filled(
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xffFFF2E7),
                        fixedSize: Size(20, 20),
                      ),

                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: AppColors.primaryColor,
                        // size: 28,
                        // weight: 600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

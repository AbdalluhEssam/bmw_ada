import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final String price;
  final String image;
  final bool isFavorite;
  final Color bgColor;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    this.isFavorite = false,
    this.bgColor = const Color(0xFFFFF3E2),
  });
}

import 'dart:ui';

import 'package:bmw/core/constants/app_assets.dart';
import 'package:bmw/features/home/data/models/product_model.dart';

List<ProductModel> productData = [
  ProductModel(
    name: 'Quinoa fruit salad',
    price: "10000",
    image: AppAssets.honeyImage,
  ),
  ProductModel(
    name: 'Tropical fruit salad',
    price: "8000",
    image: AppAssets.honeyImage,
    bgColor: Color(0xFFFEF0F0),
  ),
  ProductModel(
    name: 'melon fruit salad',
    price: "4000",
    image: AppAssets.honeyImage,
    bgColor: Color(0xFFF1EFF6),
  ),
];

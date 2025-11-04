import 'package:bmw/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CustomCardProduct extends StatelessWidget {
  final ProductModel productModel;

  const CustomCardProduct({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 170,
      width: 160,
      decoration: BoxDecoration(
        color: productModel.bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                // setState(() {
                //   isFavorite = !isFavorite;
                //   log("isFavorite: $isFavorite");
                // });
              },
              icon: Icon(Icons.favorite_border, color: AppColors.primaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  productModel.image,
                  width: 64,
                  height: 64,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 8),
                Text(
                  productModel.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "\$ ${productModel.price}",
                      style: TextStyle(
                        fontSize: 14,
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

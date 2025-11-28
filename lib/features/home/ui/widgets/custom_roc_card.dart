import 'package:bmw/features/home/ui/cubit/fav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

class CustomRocCard extends StatelessWidget {
  final String? price;
  final String? title;
  final String? imagePath;

  const CustomRocCard({super.key, this.price, this.title, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(),
      child: Container(

        decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.2),
          //     blurRadius: 2,
          //     offset: Offset(0, 3),
          //   ),
          // ],
        ),

        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: BlocBuilder<FavCubit, FavState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      context.read<FavCubit>().toggleFav();
                      // isFavorite = !isFavorite;
                      // log("isFavorite: $isFavorite");
                    },
                    icon: Icon(
                      state.isFav ? Icons.favorite : Icons.favorite_border,
                      color: state.isFav ? Colors.red : AppColors.primaryColor,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    imagePath ?? AppAssets.honeyImage,
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 12),
                  Text(
                    title ?? "Honey lime combo",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        "\$ ${price ?? 2000}",
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
      ),
    );
  }
}

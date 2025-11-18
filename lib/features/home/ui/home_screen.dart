import 'dart:developer';
import 'dart:io';
import 'package:bmw/core/constants/app_assets.dart';
import 'package:bmw/features/home/data/repo/product_data.dart';
import 'package:bmw/features/home/ui/widgets/custom_card_product.dart';
import 'package:bmw/features/home/ui/widgets/custom_category.dart';
import 'package:bmw/features/home/ui/widgets/custom_roc_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> categories = ["Hottest", "Popular", "New combo", "Top"];

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, backgroundColor: Colors.white),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppAssets.menuIcon),
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Column(
                        children: [
                          SvgPicture.asset(AppAssets.cartIcon),
                          SizedBox(height: 4),
                          Text(
                            'My basket',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                        horizontal: 0.w,
                      ),
                    ),
                  ],
                ),
                Platform.isIOS
                    ? CupertinoButton(
                      onPressed: () {},
                      child: Icon(Icons.notifications, size: 28.sp),
                    )
                    : IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications, size: 28.sp),
                    ),
                SizedBox(height: 20),
                Text(
                  'Hello ${args['name'] ?? 'Guest'}, What fruit salad\ncombo do you want today?',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          controller: searchController,
                          radius: 16,
                          hintText: 'Search for fruit salad combos',
                          backgroundColor: Color(0xFFF3F4F9),
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF86869E),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF86869E),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppAssets.filterIcon),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40),
                Text(
                  "Recommended Combo",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(child: CustomRocCard()),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomRocCard(
                        price: '8000',
                        title: 'Berry mango combo',
                        imagePath: AppAssets.berryImage,
                      ),
                    ),
                  ],
                ),
                30.verticalSpace,

                SizedBox(
                  height: 40.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    separatorBuilder: (context, index) => 16.horizontalSpace,
                    itemBuilder:
                        (context, index) => GestureDetector(
                          onTap: () {
                            selectedIndex = index;
                            setState(() {});
                            log("selectedIndex: $selectedIndex");
                          },
                          child: CustomCategory(
                            isActive: selectedIndex == index,
                            title: categories[index],
                          ),
                        ),
                  ),
                ),
                16.verticalSpace,
                SizedBox(
                  height: 150.h,
                  child: ListView.separated(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: productData.length,
                    separatorBuilder: (context, index) => SizedBox(width: 16),
                    itemBuilder:
                        (context, index) =>
                            CustomCardProduct(productModel: productData[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutlab_projects_2024/common/widgets/appbar/appbar.dart';
import 'package:flutlab_projects_2024/common/widgets/icons/t_circular_icon.dart';
import 'package:flutlab_projects_2024/common/widgets/layout/grid_layout.dart';
import 'package:flutlab_projects_2024/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutlab_projects_2024/features/shop/screens/home/home_screen.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 5,
                itemBuilder: (_, index) => const TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

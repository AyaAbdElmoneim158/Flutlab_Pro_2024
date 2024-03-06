import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutlab_projects_2024/common/widgets/layout/grid_layout.dart';
import 'package:flutlab_projects_2024/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutlab_projects_2024/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutlab_projects_2024/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //*Header - - - - - - - - - - - - - - - -
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //*Appbar - - - - - - - - - - - - - - - -
                  THomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //*SearchBar - - - - - - - - - - - - - - - -
                  TSearchContainer(text: "Search in Store"),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //*Categories - - - - - - - - - - - - - - - -
                  THomeCategories()
                ],
              ),
            ),
            //*Body - - - - - - - - - - - - - - - -
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [
                    TImage.promoBanner1,
                    TImage.promoBanner2,
                    TImage.promoBanner3,
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(
                    title: "Popular Products",
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TGridLayout(
                    itemCount: 5,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

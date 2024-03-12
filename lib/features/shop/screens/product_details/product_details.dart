import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/features/shop/screens/product_details/widgets/bottom_add_to_card.dart';
import 'package:flutlab_projects_2024/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:flutlab_projects_2024/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutlab_projects_2024/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutlab_projects_2024/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///* Product_slider - - - - - - - - - - - - - - - - - - - - - - - - - -
            const TProductImageSlider(),

            ///* Product_details - - - - - - - - - - - - - - - - - - - - - - - - - -
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///* Rating & Share - - - - - - - - - - - - - -
                  const TRatingShareWidget(),

                  ///* Price, Title, Stock, & Brand - - - - - - - - - - - - - -
                  const TProductMetaData(),

                  ///* Attributes - - - - - - - - - - - - - -

                  ///* Checkout Button - - - - - - - - - - - - - -
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///* Description - - - - - - - - - - - - - -
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i an trimLines: 2',
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///* Reviews - - - - - - - - - -
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                        onPressed: () => Get.to(()=> const ProductReviewsScreen()),
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                    ],
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

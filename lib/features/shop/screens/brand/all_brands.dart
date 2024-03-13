import 'package:flutlab_projects_2024/common/widgets/appbar/appbar.dart';
import 'package:flutlab_projects_2024/common/widgets/brands/brand_card.dart';
import 'package:flutlab_projects_2024/common/widgets/layout/grid_layout.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/features/shop/screens/brand/brand_products.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Brands'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            const TSectionHeading(title: "Brands"),
            const SizedBox(height: TSizes.spaceBtwItems),
            TGridLayout(
              itemCount: 5,
              mainAxisExtent: 80,
              itemBuilder: (_, index) => TBrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const BrandProductsScreen()),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

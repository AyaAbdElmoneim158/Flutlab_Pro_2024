import 'package:flutlab_projects_2024/common/widgets/appbar/appbar.dart';
import 'package:flutlab_projects_2024/common/widgets/brands/brand_card.dart';
import 'package:flutlab_projects_2024/common/widgets/product/sortable/sortable_products.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Nick'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwSections),
            TSortableProducts(),
          ]),
        ),
      ),
    );
  }
}

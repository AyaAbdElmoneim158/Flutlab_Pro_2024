import 'package:flutlab_projects_2024/common/widgets/product/cart/product_quantity_with_add_remove_button.dart';
import 'package:flutlab_projects_2024/common/widgets/text/product_price_text.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(
          children: [
            const TCartItems(),
            if (showAddRemoveButtons)
              const SizedBox(height: TSizes.spaceBtwItems),
            if (showAddRemoveButtons)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70),
                      TProductQuantityWithAddRemoveButton (),
                    ],
                  ),
                  TProductPriceText(price: '256')
                ],
              ),
          ],
        ),
      ),
    );
  }
}

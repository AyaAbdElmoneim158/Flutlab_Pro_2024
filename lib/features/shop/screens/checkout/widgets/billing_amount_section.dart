import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRowInfo(context, "Subtotal", '\$256.00'),
        const SizedBox(width: TSizes.spaceBtwItems / 2),
        _buildRowInfo(context, "Shipping Fee", '\$6.00'),
        const SizedBox(width: TSizes.spaceBtwItems / 2),
        _buildRowInfo(context, "tax Fee", '\$6.00'),
        const SizedBox(width: TSizes.spaceBtwItems / 2),
        _buildRowInfo(context, "Order Total", '\$256.00', true),
      ],
    );
  }

  Row _buildRowInfo(BuildContext context, String leftText, String rightText, [bool titleMedium = false]) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(leftText, style: Theme.of(context).textTheme.bodyMedium),
      Text(rightText, style: titleMedium?Theme.of(context).textTheme.titleMedium :Theme.of(context).textTheme.labelLarge),
    ]);
  }
}

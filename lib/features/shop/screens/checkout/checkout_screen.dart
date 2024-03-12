import 'package:flutlab_projects_2024/common/widgets/appbar/appbar.dart';
import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutlab_projects_2024/common/widgets/product/cart/coupon_code.dart';
import 'package:flutlab_projects_2024/common/widgets/success_screen/success_screen.dart';
import 'package:flutlab_projects_2024/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutlab_projects_2024/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:flutlab_projects_2024/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutlab_projects_2024/navigation_menu.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Reviews',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
     bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () =>  Get .to(() =>  SuccessScreen(
            image: TImage.emailVerify,
            title: "Payment Success!",
            subTitle: "Your item will be shipped soon!",
            onPress:() =>  Get.offAll(()=>const NavigationMenu()),
          )),
          child: const Text('Checkout \$265.0'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            ///* Items - - - - - - - - - - - - - - - - - -
            const TCartItems(showAddRemoveButtons: false),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///* Coupon - - - - - - - - - - - - - - - - - -
            const TCouponCode(),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///* Billing - - - - - - - - - - - - - - - - - -
            TRoundedContainer(
              showBorder: true,
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? TColors.black : TColors.white,
              child: const Column(
                children: [
                  TBillingPaymentSection(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TBillingPaymentSection(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TBillingAddressSection(),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

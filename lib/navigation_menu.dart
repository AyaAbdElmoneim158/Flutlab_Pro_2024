import 'package:flutlab_projects_2024/features/shop/screens/home/home_screen.dart';
import 'package:flutlab_projects_2024/features/shop/screens/store/store_screen.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            backgroundColor: dark ? TColors.black : TColors.white,
            indicatorColor: dark
                ? TColors.white.withOpacity(0.1)
                : TColors.dark.withOpacity(0.1),
            onDestinationSelected: (value) =>
                controller.selectedIndex.value = value,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "WishList"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ]),
      ),
      body: Obx(
          () => controller.screens(context)[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  List<Widget> screens(context) => [
        const HomeScreen(),
        const StoreScreen(),
        Center(
          child: Text(
            "WishList Screen",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Center(
          child: Text(
            "Profile Screen",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ];
}

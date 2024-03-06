import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutlab_projects_2024/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutlab_projects_2024/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //*Header - - - - - - - - - - - - - - - -
             TPrimaryHeaderContainer(
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
            
          ],
        ),
      ),
    );
  }
}

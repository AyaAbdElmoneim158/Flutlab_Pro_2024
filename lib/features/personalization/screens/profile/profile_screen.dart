import 'package:flutlab_projects_2024/common/widgets/appbar/appbar.dart';
import 'package:flutlab_projects_2024/common/widgets/images/t_circle_image.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(
                      image: TImage.user, width: 80, height: 80),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture")),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            const TSectionHeading(
                title: "Profile Information", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),
            TProfileMenu(title: 'Name', value: 'Aya', onPressed: () {}),
            TProfileMenu(
                title: 'Username', value: 'Aya@gmail.com', onPressed: () {}),
            const TSectionHeading(
                title: "Personal Information", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),
            TProfileMenu(title: 'User ID', value: '45689', onPressed: () {}),
            TProfileMenu(
                title: 'E-mail', value: 'coding_with_t', onPressed: () {}),
            TProfileMenu(
                title: 'Phone Number',
                value: '+92-317-8059528',
                onPressed: () {}),
            TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
            TProfileMenu(
                title: 'Date of Birth',
                value: '10 Oct, 1994',
                onPressed: () {}),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Close Account',
                style: TextStyle(color: Colors.red),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

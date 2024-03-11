import 'package:flutlab_projects_2024/common/widgets/images/t_circle_image.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
          image: TImage.user, width: 50, height: 50, padding: 0),
      title: Text('Coding with T',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white)),
      subtitle: Text('support@codingwithT.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white)),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}

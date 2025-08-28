import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/widgets/social_container.dart';

class SignWithSocialSection extends StatelessWidget {
  const SignWithSocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                endIndent: 10,
                indent: 70,
                height: 20,
                thickness: 1,
                color: MyColors.myGray4,
              ),
            ),
            Text(
              "Or Sign in With",
              style: TextStyle(fontSize: 11, color: MyColors.myGray4),
            ),
            Expanded(
              child: Divider(
                endIndent: 70,
                indent: 10,
                height: 20,
                thickness: 1,
                color: MyColors.myGray4,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialContainer(image: Assets.assetsImagesGoogle,),
            SizedBox(width: 10),
           SocialContainer(image: Assets.assetsImagesFacebook)
          ],
        ),
      ],
    );
  }
}

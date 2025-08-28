import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.assetsImagesImage11),
        SizedBox(height: 25),
        Text(
          "100K+ Premium Recipe ",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: MyColors.myWhite,
          ),
        ),
        SizedBox(height: 260),
      ],
    );
  }
}

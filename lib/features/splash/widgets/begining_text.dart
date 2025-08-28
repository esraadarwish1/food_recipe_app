import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class BeginingText extends StatelessWidget {
  const BeginingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Get \n Cooking",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w600,
            color: MyColors.myWhite,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          "Simple way to find Tasty Recipe",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: MyColors.myWhite,
          ),
        ),
        SizedBox(height: 65),
      ],
    );
  }
}

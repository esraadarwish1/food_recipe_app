import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Create an account",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          "Let’s help you set up your account,\n it won’t take long.",
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: MyColors.myBlack2,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

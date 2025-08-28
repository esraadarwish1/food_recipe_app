import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello,",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          "Welcome Back!",
          style: TextStyle(fontSize: 20, color: MyColors.myBlack2),
        ),
      ],
    );
  }
}

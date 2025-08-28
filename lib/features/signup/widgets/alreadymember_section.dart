import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class AlreadymemberSection extends StatelessWidget {
  const AlreadymemberSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already a member?",
          style: TextStyle(
            color: MyColors.myBlack2,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            "Sign In",
            style: TextStyle(
              color: MyColors.mySecondary100,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

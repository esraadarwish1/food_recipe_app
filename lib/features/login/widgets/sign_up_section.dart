import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/features/signup/signup_view.dart';

class SignUpSection extends StatelessWidget {
  const SignUpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account?",
          style: TextStyle(
            color: MyColors.myBlack2,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpView();
                },
              ),
            );
          },
          child: Text(
            "Sign up",
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

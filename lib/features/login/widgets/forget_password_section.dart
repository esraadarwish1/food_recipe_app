import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/views/forgot_password_view.dart';

class ForgetPasswordSection extends StatelessWidget {
  const ForgetPasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ForgotPasswordView();
            },
          ),
        );
      },
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: MyColors.mySecondary100,
        ),
      ),
    );
  }
}

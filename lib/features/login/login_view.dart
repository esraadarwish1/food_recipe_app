import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/login/widgets/fields_section.dart';
import 'package:food_recipe_app/features/login/widgets/forget_password_section.dart';
import 'package:food_recipe_app/features/login/widgets/header_section.dart';
import 'package:food_recipe_app/features/login/widgets/sign_in_botton.dart';
import 'package:food_recipe_app/features/login/widgets/sign_up_section.dart';
import 'package:food_recipe_app/widgets/sign_with_social_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            HeaderSection(),
            SizedBox(height: 57),
            FieldsSection(),
            SizedBox(height: 20),
            ForgetPasswordSection(),
            SizedBox(height: 25),
            SignInBotton(),
            SizedBox(height: 22),
            SignWithSocialSection(),
            SizedBox(height: 55),
            SignUpSection(),
          ],
        ),
      ),
    );
  }
}

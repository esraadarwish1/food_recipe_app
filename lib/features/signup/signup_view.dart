import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/signup/widgets/accept_terms_section.dart';
import 'package:food_recipe_app/features/signup/widgets/alreadymember_section.dart';
import 'package:food_recipe_app/features/signup/widgets/field_section.dart';
import 'package:food_recipe_app/features/signup/widgets/header_section.dart';
import 'package:food_recipe_app/features/signup/widgets/sign_up_botton.dart';
import 'package:food_recipe_app/widgets/sign_with_social_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
            FieldSection(),
            AcceptTermsSection(),
            SizedBox(height: 25),
            SignUpBotton(),
            SizedBox(height: 22),
            SignWithSocialSection(),
            SizedBox(height: 20),
            AlreadymemberSection(),
          ],
        ),
      ),
    );
  }
}

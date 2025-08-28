import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/features/splash/widgets/begining_text.dart';
import 'package:food_recipe_app/features/splash/widgets/logo_section.dart';
import 'package:food_recipe_app/features/splash/widgets/starting_botton.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesRectangle6),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            LogoSection(),
            BeginingText(),
            StartingBotton(),
          ],
        ),
      ),
    );
  }
}

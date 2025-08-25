import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/views/login_view.dart';
import 'package:food_recipe_app/widgets/custom_bottom.dart';

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
            CustomButton(
              title: "Start Cooking",
              width: 245,
              withIcon: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginView();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

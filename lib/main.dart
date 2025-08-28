import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/home/home_view.dart';
import 'package:food_recipe_app/features/search/search_view.dart';
import 'package:food_recipe_app/features/splash/splash_view.dart';
import 'package:food_recipe_app/features/layout/layout_view.dart';
import 'package:food_recipe_app/models/recipe_model.dart';

void main(List<String> args) {
  runApp(FoodRecipeApp());
}

class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashView(),
    );
  }
}

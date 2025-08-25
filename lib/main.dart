import 'package:flutter/material.dart';
import 'package:food_recipe_app/views/home_view.dart';
import 'package:food_recipe_app/views/login_view.dart';
import 'package:food_recipe_app/views/splash_view.dart';

void main(List<String> args) {
  runApp(FoodRecipeApp());
}

class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: HomeView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/home/widgets/categories_section.dart';
import 'package:food_recipe_app/features/home/widgets/header_section.dart';
import 'package:food_recipe_app/features/home/widgets/new_recipes_section.dart';
import 'package:food_recipe_app/features/home/widgets/recipes_section.dart';
import 'package:food_recipe_app/features/home/widgets/search_section_readonly.dart';
import 'package:food_recipe_app/models/recipe_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  // final RecipeModel recipeModel;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> categories = [
    "All",
    "Indian",
    "Italian",
    "Asian",
    "Chinese",
    "Chinese",
    "Chinese",
    "Chinese",
  ];

  int selectedIndex = 0;

  onSelectCategory(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 65),
          HeaderSelection(),
          SizedBox(height: 30),
          SearchSectionReadOnly(),
          SizedBox(height: 25),
          CategoriesSection(
            categories: categories,
            selectedIndex: selectedIndex,
            onSelectCategory: (index) {
              onSelectCategory(index);
            },
          ),
          SizedBox(height: 40),
          RecipesSection(recipes: RecipeModel.homeRecipes),
          SizedBox(height: 25),
          NewRecipesSection(),
        ],
      ),
    );
  }
}

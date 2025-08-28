import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/features/search/widgets/recipes_grid_view_section.dart';
import 'package:food_recipe_app/features/search/widgets/search_section.dart';
import 'package:food_recipe_app/models/recipe_model.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<RecipeModel> filterdList = [];

  @override
  void initState() {
    filterdList = RecipeModel.recipes;
    super.initState();
  }

  void searchFunction(String query) {
    setState(() {
      filterdList = RecipeModel.recipes.where((recipe) {
        return recipe.titel.toLowerCase().startsWith(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myWhite,
        title: Center(
          child: Text(
            "Search recipes",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchSection(onChanged: searchFunction),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Recent Search",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 25),
              child: RecipesGridViewSection(recipes: filterdList),
            ),
          ),
        ],
      ),
    );
  }
}

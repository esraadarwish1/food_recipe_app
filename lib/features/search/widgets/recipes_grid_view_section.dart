import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/search/widgets/recipe_item.dart';
import 'package:food_recipe_app/models/recipe_model.dart';

class RecipesGridViewSection extends StatelessWidget {
  const RecipesGridViewSection({super.key, required this.recipes});
  final List<RecipeModel> recipes;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: recipes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return RecipeItem(recipeModel: recipes[index]);
      },
    );
  }
}

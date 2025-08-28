import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/models/recipe_model.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({super.key, required this.recipeModel});
  final RecipeModel recipeModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.topRight,
      children: [
        Image.asset(
          recipeModel.image,
          fit: BoxFit.cover,
          height: 200,
          width: 200,
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withValues(alpha: 0.5),
                Colors.black.withValues(alpha: 0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  recipeModel.titel,
                  style: TextStyle(
                    fontSize: 12.61,
                    fontWeight: FontWeight.w600,
                    color: MyColors.myWhite,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 4),
                Text(
                  recipeModel.chef!,
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    color: MyColors.myGray3,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 23,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColors.mySecondary20,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Icon(Icons.star, color: MyColors.mySecondary100, size: 13),
                  Spacer(),
                  Text("4.0", style: TextStyle(fontSize: 11)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

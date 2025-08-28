import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/models/recipe_model.dart';

class RecipesSection extends StatelessWidget {
  const RecipesSection({super.key, required this.recipes});

  final List<RecipeModel> recipes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: RecipeItem(recipeModel: recipes[index]),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 20);
        },
        itemCount: recipes.length,
      ),
    );
  }
}

class RecipeItem extends StatelessWidget {
  const RecipeItem({super.key, required this.recipeModel});
  final RecipeModel recipeModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 180,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: MyColors.myGray4.withValues(alpha: .5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    recipeModel.titel,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Spacer(),
                Text(
                  "Time",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: MyColors.myGray3,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "10 Mins",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: MyColors.myGrey1,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: MyColors.myWhite,
                      child: Image.asset(Assets.assetsImagesSaved),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(top: 10, child: Image.asset(recipeModel.image)),
        Positioned(
          right: 5,
          top: 45,
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

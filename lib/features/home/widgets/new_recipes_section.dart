import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class NewRecipesSection extends StatelessWidget {
  const NewRecipesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "New Recipes",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 183,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            itemCount: 10,
            separatorBuilder: (context, index) => SizedBox(width: 20),
            itemBuilder: (context, index) {
              return NewRecipeItem();
            },
          ),
        ),
      ],
    );
  }
}

class NewRecipeItem extends StatelessWidget {
  const NewRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomRight,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          height: 100,
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors.myWhite.withValues(alpha: 1),
            boxShadow: [
              BoxShadow(
                color: MyColors.myGray4,
                // spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 145,
                child: Text(
                  "Steak with tomato sauce and bulgur rice.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: MyColors.myGrey1,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Image.asset(
                Assets.assetsImagesRatingfilled,
                height: 20,
                width: 70,
              ),
              Row(
                children: [
                  Image.asset(Assets.assetsImagesPerson),
                  SizedBox(width: 5),
                  Text(
                    "By James Milner",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MyColors.myGray3,
                    ),
                  ),
                  Spacer(),
                  Image.asset(Assets.assetsImagesTimer),
                  SizedBox(width: 5),
                  Text(
                    "20 mins",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MyColors.myGray3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(top: 0, child: Image.asset(Assets.assetsImagesRecipe)),
      ],
    );
  }
}

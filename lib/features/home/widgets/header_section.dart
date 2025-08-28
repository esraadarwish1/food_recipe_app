import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class HeaderSelection extends StatelessWidget {
  const HeaderSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Jega",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              Text(
                "What are you cooking today?",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: MyColors.myGray3,
                ),
              ),
            ],
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: MyColors.mySecondary40,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(Assets.assetsImagesJega),
          ),
        ],
      ),
    );
  }
}

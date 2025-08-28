import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class SocialContainer extends StatelessWidget {
  const SocialContainer({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MyColors.myGray4),
        boxShadow: [
          BoxShadow(
            color: MyColors.myGray4,
            spreadRadius: 1,
            blurRadius: 3,
            blurStyle: BlurStyle.normal,
            offset: Offset.fromDirection(3),
          ),
          BoxShadow(color: MyColors.myWhite),
        ],
      ),
      child: Image.asset(image),
    );
  }
}

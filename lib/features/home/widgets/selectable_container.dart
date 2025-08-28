import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/my_colors.dart';

class SelectableContainer extends StatelessWidget {
  const SelectableContainer({
    super.key,
    required this.category,
    required this.isSeleted,
  });
  final String category;
  final bool isSeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 31,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSeleted ? MyColors.myPrimary100 : Colors.transparent,
      ),
      child: Center(
        child: Text(
          category,
          style: TextStyle(
            color: isSeleted ? MyColors.myWhite : MyColors.myPrimary80,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

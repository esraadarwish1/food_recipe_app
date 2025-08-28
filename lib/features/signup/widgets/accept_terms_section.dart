import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';

class AcceptTermsSection extends StatelessWidget {
  const AcceptTermsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 17,
          width: 17,
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.mySecondary100),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        SizedBox(width: 5),
        Text(
          "Accept terms & Condition",
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: MyColors.mySecondary100,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/my_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color,
    required this.title,
    this.textColor,
    required this.width,
    this.hight,
    this.onTap,
    this.withIcon = false,
  });

  final Color? color;
  final String title;
  final Color? textColor;
  final double width;
  final double? hight;

  final void Function()? onTap;
  final bool withIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: hight ?? 65,
        width: width,
        decoration: BoxDecoration(
          color: color ?? MyColors.myPrimary100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: textColor ?? Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (withIcon) ...[
              SizedBox(width: 10),
              Icon(Icons.arrow_forward, color: MyColors.myWhite),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/my_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.textHint,
    this.icon,
    this.headerTitle,
    this.suffixIcon,
    this.hintColor,
    this.contentPadding,
  });

  final String textHint;
  final Widget? icon;
  final String? headerTitle;
  final Icon? suffixIcon;
  final Color? hintColor;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headerTitle != null) ...[
          Text(headerTitle!, style: TextStyle(fontSize: 14)),
          SizedBox(height: 5),
        ],
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          decoration: InputDecoration(
            hintText: textHint,
            contentPadding: contentPadding??EdgeInsets.symmetric(vertical: 19,horizontal: 20),
            hintStyle: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: hintColor ?? MyColors.myGray4,
            ),
            prefixIcon: icon,
            prefixIconColor: MyColors.myGray4,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: MyColors.myGray4),
            ),
          ),
        ),
      ],
    );
  }
}

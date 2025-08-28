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
    this.readOnly = false,
    this.onTap,
    this.onChanged,
     this.enabled=true,
  });

  final String textHint;
  final Widget? icon;
  final String? headerTitle;
  final Icon? suffixIcon;
  final Color? hintColor;
  final EdgeInsetsGeometry? contentPadding;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool enabled;

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
          enabled: enabled,
          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
          onTap: onTap,
          onChanged: onChanged ,
          cursorColor: MyColors.myPrimary80,
          readOnly: readOnly,
          autovalidateMode: AutovalidateMode.always,
          decoration: InputDecoration(
            hintText: textHint,
            contentPadding:
                contentPadding ??
                EdgeInsets.symmetric(vertical: 19, horizontal: 20),
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
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: MyColors.myPrimary80),
            ),
          ),
        ),
      ],
    );
  }
}

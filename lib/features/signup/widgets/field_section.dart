import 'package:flutter/material.dart';
import 'package:food_recipe_app/widgets/custom_text_form_field.dart';

class FieldSection extends StatelessWidget {
  const FieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(headerTitle: "Name", textHint: "Enter Name"),
        SizedBox(height: 20),
        CustomTextFormField(headerTitle: "Email", textHint: "Enter Email"),
        SizedBox(height: 20),
        CustomTextFormField(
          headerTitle: "Password ",
          textHint: "Enter Password",
        ),
        SizedBox(height: 20),
        CustomTextFormField(
          headerTitle: "Confirm Password ",
          textHint: "Retype Password",
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

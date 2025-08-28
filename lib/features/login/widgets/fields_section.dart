import 'package:flutter/material.dart';
import 'package:food_recipe_app/widgets/custom_text_form_field.dart';

class FieldsSection extends StatelessWidget {
  const FieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(headerTitle: "Email", textHint: "Enter Email"),
        SizedBox(height: 30),
        CustomTextFormField(
          headerTitle: "Password ",
          textHint: "Enter Password",
        ),
      ],
    );
  }
}

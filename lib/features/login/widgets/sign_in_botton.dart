import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/layout/layout_view.dart';
import 'package:food_recipe_app/widgets/custom_bottom.dart';

class SignInBotton extends StatelessWidget {
  const SignInBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        title: "Sign In ",
        width: 315,
        withIcon: true,
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LayoutView();
            },
          ),
        ),
      ),
    );
  }
}

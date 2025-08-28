import 'package:flutter/material.dart';
import 'package:food_recipe_app/features/login/login_view.dart';
import 'package:food_recipe_app/widgets/custom_bottom.dart';

class StartingBotton extends StatelessWidget {
  const StartingBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: "Start Cooking",
      hight: 55,
      width: 245,
      withIcon: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginView();
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class SavedRecipesView extends StatelessWidget {
  const SavedRecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          SizedBox(height: 40),
          Center(
            child: Text(
              "Saved recipes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

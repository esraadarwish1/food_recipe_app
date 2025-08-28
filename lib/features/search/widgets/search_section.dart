import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/features/filter/filter_bottom_sheet.dart';
import 'package:food_recipe_app/widgets/custom_bottom.dart';
import 'package:food_recipe_app/widgets/custom_text_form_field.dart';

class SearchSection extends StatelessWidget {
  SearchSection({super.key, required this.onChanged});

  final Function(String) onChanged;
  final List<String> timeFilter = ["All", "Newest", "Oldest", "Popularity"];
  final List<String> rateFilter = ["5", "4", "3", "2", "1"];
  final List<String> categoryFilter = [
    "All",
    "Cereal",
    "Vegetables",
    "Dinner",
    "Chinese",
    "Local Dish",
    "Fruit",
    "BreakFast",
    "Spanish",
    "Chinese",
    "Lunch",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              onChanged: onChanged,
              contentPadding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 38,
              ),
              textHint: "Search recipe",
              icon: Icon(Icons.search),
            ),
          ),
          SizedBox(width: 20),
          FilterSheet(
            timeFilter: timeFilter,
            rateFilter: rateFilter,
            categoryFilter: categoryFilter,
          ),
        ],
      ),
    );
  }
}

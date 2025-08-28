import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:food_recipe_app/features/home/widgets/selectable_container.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onSelectCategory,
  });

  final List<String> categories;
  final int selectedIndex;
  final Function(int) onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              log("index $index");
              onSelectCategory(index);
            },
            child: SelectableContainer(
              category: categories[index],
              isSeleted: selectedIndex == index,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 20);
        },
        itemCount: categories.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/my_colors.dart';

class FilterSearchList extends StatelessWidget {
  const FilterSearchList({
    super.key,
    required this.list,
    required this.filterName,
    this.isRate = false,
    // required this.isSelected,
    required this.selectedItem,
    required this.onSelectItem,
  });

  final List<String> list;
  final String filterName;
  final bool isRate;
  // final bool isSelected;
  final String selectedItem;
  final Function(String) onSelectItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          filterName,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: list.map((e) {
            bool isSelected = e == selectedItem;
            return GestureDetector(
              onTap: () {
                onSelectItem(e);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: isSelected
                      ? MyColors.myPrimary100
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: isSelected
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: MyColors.myPrimary80),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 4,
                  children: [
                    Text(
                      e,
                      style: TextStyle(
                        color: isSelected
                            ? MyColors.myWhite
                            : MyColors.myPrimary80,
                      ),
                    ),
                    if (isRate)
                      Icon(
                        Icons.star,
                        color: isSelected
                            ? MyColors.myWhite
                            : MyColors.myPrimary80,
                      ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/features/filter/widgets/filter_search_list.dart';
import 'package:food_recipe_app/features/search/widgets/search_section.dart';
import 'package:food_recipe_app/widgets/custom_bottom.dart';

class FilterSheet extends StatelessWidget {
  const FilterSheet({
    super.key,
    required this.timeFilter,
    required this.rateFilter,
    required this.categoryFilter,
  });

  final List<String> timeFilter;
  final List<String> rateFilter;
  final List<String> categoryFilter;

  @override
  Widget build(BuildContext context) {
    String selectedTime = '';
    String selectedRate = '';
    String selectedCategory = '';
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            log("rebuildt22");

            return StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.viewInsetsOf(context).bottom,
                  ),
                  child: SizedBox(
                    // height: 500,
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 35),
                        Text(
                          "Filter Search",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 30,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FilterSearchList(
                                filterName: "Time",
                                list: timeFilter,
                                selectedItem: selectedTime,
                                onSelectItem: (filter) {
                                  setState(() {
                                    selectedTime = filter;
                                  });
                                },
                              ),
                              SizedBox(height: 20),
                              FilterSearchList(
                                isRate: true,
                                list: rateFilter,
                                filterName: "Rate",
                                selectedItem: selectedRate,
                                // isSelected: true,
                                onSelectItem: (e) {
                                  selectedRate = e;
                                  setState(() {});
                                },
                              ),
                              SizedBox(height: 20),
                              FilterSearchList(
                                filterName: "Category",
                                list: categoryFilter,
                                selectedItem: selectedCategory,
                                // isSelected: true,
                                onSelectItem: (e) {
                                  setState(() {
                                    selectedCategory = e;
                                  });
                                },
                              ),
                              SizedBox(height: 20),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomButton(
                                    title: "Filter",
                                    width: 200,
                                    hight: 45,
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: Image.asset(Assets.assetsImagesFilter),
    );
  }
}

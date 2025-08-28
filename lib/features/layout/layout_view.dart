import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/features/home/home_view.dart';
import 'package:food_recipe_app/features/savedRecipes/saved_recipes.dart';
import 'package:food_recipe_app/models/bottom_nav_icons_model.dart';
import 'package:food_recipe_app/features/layout/widgets/bottom_nav_item.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
    log("cuu $currentIndex");
  }

  final List views = [
    const HomeView(),
    SavedRecipesView(),
    Container(color: Colors.red),
    Container(color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyColors.myPrimary100,
        shape: const CircleBorder(),
        child: Icon(Icons.add, size: 28, color: MyColors.myWhite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 90,
        color: MyColors.myWhite,
        shadowColor: MyColors.myGray4,
        elevation: 70,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0, // space around FAB
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(BottomNavModel.list.length, (index) {
              final e = BottomNavModel.list[index];
              return BottomNavItem(
                icon: e.icon,
                activeIcon: e.activeIcon,
                isSelected: currentIndex == index,
                onSelect: () => onPageChanged(index),
              );
            }),
          ],
        ),
      ),
    );
  }
}

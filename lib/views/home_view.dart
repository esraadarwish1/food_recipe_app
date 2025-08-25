import 'package:flutter/material.dart';

import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/widgets/custom_text_form_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, this.isSelected = false});

  final bool isSelected;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> categories = [
    "All",
    "Indian",
    "Italian",
    "Asian",
    "Chinese",
    "Chinese",
    "Chinese",
    "Chinese",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 65),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Jega",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "What are you cooking today?",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: MyColors.myGray3,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: MyColors.mySecondary40,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(Assets.assetsImagesJega),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 38,
                    ),
                    textHint: "Search recipe",
                    icon: Icon(Icons.search),
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(Assets.assetsImagesFilter),
              ],
            ),
            SizedBox(height: 25),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Text(categories[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 5);
                },
                itemCount: categories.length,
              ),
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   physics: const BouncingScrollPhysics(),
            //   child: Row(
            //     children: List.generate(categories.length, (index) {
            //       return Text(categories[index]);
            //     }),

            //     // Expanded(
            //     //   child: ListView.separated(
            //     //     scrollDirection: Axis.horizontal,
            //     //     itemBuilder: (context, ind) {
            //     //       return Text("data");
            //     //     },
            //     //     separatorBuilder: (context, ind) {
            //     //       return SizedBox(width: 5);
            //     //     },
            //     //     itemCount: 10,
            //     //   ),
            //     // ),
            //     // SelectedContainer(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class SelectedContainer extends StatelessWidget {
  const SelectedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      width: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.myPrimary100,
      ),
      child: Center(
        child: Text(
          "All",
          style: TextStyle(
            color: MyColors.myWhite,
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

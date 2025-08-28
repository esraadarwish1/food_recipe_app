import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/features/search/search_view.dart';
import 'package:food_recipe_app/widgets/custom_text_form_field.dart';

class SearchSectionReadOnly extends StatelessWidget {
  const SearchSectionReadOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SearchView();
              },
            ),
          );
        },
        child: Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                enabled: false,
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return SearchView();
                //     },
                //   ),
                // ),
                readOnly: true,
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
      ),
    );
  }
}

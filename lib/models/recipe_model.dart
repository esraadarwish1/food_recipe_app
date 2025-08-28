import 'package:food_recipe_app/constants/assets.dart';

class RecipeModel {
  final String titel;
  final String image;
  final String? chef;
   RecipeModel({
    required this.titel,
    required this.image,
     this.chef,
  });

    static List<RecipeModel> recipes = [
    RecipeModel(
      titel: "Traditional spare ribs\n baked",
      image: Assets.assetsImagesFood1,
      chef: "By Chef John",
    ),
    RecipeModel(
      titel: "Lamb chops with fruity couscous and mint",
      image: Assets.assetsImagesFood2,
      chef: "By Spicy Nelly",
    ),
    RecipeModel(
      titel: "spice roasted chicken with flavored rice",

      image: Assets.assetsImagesFood3,
      chef: "By Mark Kelvin",
    ),
    RecipeModel(
      titel: "Chinese style Egg fried\n rice with sliced pork fillet",
      chef: "By laura wilson",
      image: Assets.assetsImagesFood4,
    ),
    RecipeModel(
      titel: "Traditional spare ribs\n baked",
      image: Assets.assetsImagesFood1,
      chef: "By Chef John",
    ),
    RecipeModel(
      titel: "Lamb chops with fruity couscous and mint",
      image: Assets.assetsImagesFood2,
      chef: "By Spicy Nelly",
    ),
    RecipeModel(
      titel: "spice roasted chicken with flavored rice",

      image: Assets.assetsImagesFood3,
      chef: "By Mark Kelvin",
    ),
    RecipeModel(
      titel: "Chinese style Egg fried\n rice with sliced pork fillet",
      chef: "By laura wilson",
      image: Assets.assetsImagesFood4,
    ),
    RecipeModel(
      titel: "Traditional spare ribs\n baked",
      image: Assets.assetsImagesFood1,
      chef: "By Chef John",
    ),
    RecipeModel(
      titel: "Lamb chops with fruity couscous and mint",
      image: Assets.assetsImagesFood2,
      chef: "By Spicy Nelly",
    ),
    RecipeModel(
      titel: "spice roasted chicken with flavored rice",

      image: Assets.assetsImagesFood3,
      chef: "By Mark Kelvin",
    ),
    RecipeModel(
      titel: "Chinese style Egg fried\n rice with sliced pork fillet",
      chef: "By laura wilson",
      image: Assets.assetsImagesFood4,
    ),
  ];

  static List<RecipeModel> homeRecipes = [
    RecipeModel(
      titel: "Classic Greek \n Salad",
      image: Assets.assetsImagesMeal1,
    ),
    RecipeModel(
      titel: "Crunchy Nut \n Coleslaw",
      image: Assets.assetsImagesMeal2,
    ),
    RecipeModel(
      titel: "Shrimp Chicken \n Andouille Sausage Jambalaya",
      image: Assets.assetsImagesMeal3,
    ),
    RecipeModel(
      titel: "Barbecue \n Chicken Jollof Rice ",
      image: Assets.assetsImagesMeal4,
    ),
    RecipeModel(
      titel: "Portuguese Piri \n Piri Chicken",
      image: Assets.assetsImagesMeal5,
    ),
    RecipeModel(
      titel: "Portuguese Piri \n Piri Chicken",
      image: Assets.assetsImagesMeal5,
    ),
  ];



}

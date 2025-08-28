import 'package:food_recipe_app/constants/assets.dart';

class BottomNavModel {
  final String icon;
  final String activeIcon;
  const BottomNavModel({required this.icon, required this.activeIcon});

  static List<BottomNavModel> list = [
    BottomNavModel(
      icon: Assets.assetsImagesHome,
      activeIcon: Assets.assetsImagesHomeactive,
    ),
    BottomNavModel(
      icon: Assets.assetsImagesSaved,
      activeIcon: Assets.assetsImagesSavedactive,
    ),
    BottomNavModel(
      icon: Assets.assetsImagesNotification,
      activeIcon: Assets.assetsImagesNotificationactive,
    ),
    BottomNavModel(
      icon: Assets.assetsImagesProfile,
      activeIcon: Assets.assetsImagesProfileactive,
    ),
  ];
}














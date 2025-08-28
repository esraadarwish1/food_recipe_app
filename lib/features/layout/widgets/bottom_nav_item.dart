import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final String icon;
  final String activeIcon;
  final bool isSelected;
  final VoidCallback onSelect;
  const BottomNavItem({
    super.key,
    required this.icon,
    required this.activeIcon,
    this.isSelected = false,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: isSelected
          ? Image.asset(activeIcon, height: 24, width: 24)
          : Image.asset(icon, height: 24, width: 24),
    );
  }
}


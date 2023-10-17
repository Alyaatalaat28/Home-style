import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import 'bottom_nav_items.dart';
// ignore: must_be_immutable
class CustomBottomNavBody extends StatelessWidget {
   CustomBottomNavBody({Key? key}) : super(key: key);
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:textWColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomNavItems.map((item) {
          var index = bottomNavItems.indexOf(item);
          var isSelected = index == selectedIndex;
          return Expanded(
            child: InkWell(
              onTap: () {
                // Handle item tap
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                color: isSelected ? scafColor : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildIcon(item.icon, isSelected),
                    Text(
                      item.label!,
                      style: const TextStyle(
                        color: textWColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
   Widget _buildIcon(Widget icon, bool isSelected) {
    if (icon is Icon) {
      return Icon(
        icon.icon,
        color: isSelected ? textWColor : textBColor,
      );
    } else {
      // Handle cases where the icon is a different type of widget
      return icon;
    }
  }
}
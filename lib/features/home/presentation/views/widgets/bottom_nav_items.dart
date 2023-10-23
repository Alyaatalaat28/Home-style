import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<BottomNavigationBarItem> bottomNavItems = const [
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.house),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.magnifyingGlass),
    label: 'Search',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.shopping_cart_outlined,
    ),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.user),
    label: 'User',
  ),
];

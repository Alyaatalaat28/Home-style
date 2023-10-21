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
      Icons.favorite_border_rounded,
    ),
    label: 'Favorite',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.user),
    label: 'User',
  ),
];

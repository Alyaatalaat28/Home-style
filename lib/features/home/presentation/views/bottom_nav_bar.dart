import 'package:flutter/material.dart';
import 'package:home_style/features/home/presentation/views/widgets/custom_bottom_nav.dart';
import '../../../cart/presentation/views/cart_view.dart';
import '../../../search/presentation/views/search_view.dart';
import '../../../user/presentation/views/user_view.dart';
import 'home_view.dart';

// ignore: must_be_immutable
class CustomBottomNav extends StatelessWidget {
   CustomBottomNav({super.key});
  List<Widget>screens=const[
  HomeView(),
  SearchView(),
  CartView(),
  UserView()
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:screens[3],
      bottomNavigationBar: CustomBottomNavBody(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:home_style/features/home/presentation/views/widgets/grid_view.dart';
import '../../../../../core/utils/style.dart';
import 'custom_app_bar.dart';
import 'categoris_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all( 8.0),
        child: SingleChildScrollView(
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
            const CustomAppBar(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Browse by Categories',
              style: AppStyle.textStyle15Black.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            const CategorisListView(),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Recommended for You',
              style: AppStyle.textStyle15Black.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            const ProductGridView(),
          ]),
        ),
      ),
    );
  }
}

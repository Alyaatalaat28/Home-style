import 'package:flutter/material.dart';
import 'package:home_style/features/home/presentation/views/widgets/details_app_bar.dart';

import 'details_stack.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DetailsAppBar(),
          DetailsStack(),
        ],
      ),
    );
  }
}

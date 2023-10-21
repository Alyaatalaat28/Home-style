import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/features/home/presentation/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: stackColor,
      body: DetailsViewBody(),
    );
  }
}

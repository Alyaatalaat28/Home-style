import 'package:flutter/material.dart';
import 'package:home_style/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:home_style/features/search/presentation/views/widgets/divider_line.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomSearchTextField(),
            SizedBox(
              height: 16.0,
            ),
            DividerLine(),
          ])),
    );
  }
}

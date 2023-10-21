import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              FontAwesomeIcons.arrowLeftLong,
            )),
        const Spacer(),
        const Icon(Icons.shopping_bag_outlined),
      ],
    );
  }
}

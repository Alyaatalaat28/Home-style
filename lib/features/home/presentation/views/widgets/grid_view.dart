import 'package:flutter/material.dart';
import 'package:home_style/features/home/presentation/views/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        const double maxWidth = 600;
        final int crossAxisCount = constraints.maxWidth < maxWidth ? 2 : 4;
        final double crossAxisSpacing =
            constraints.maxWidth < maxWidth ? 10 : 12;

        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => const ProductItem(),
          itemCount: 10,
        );
      },
    );
  }
}

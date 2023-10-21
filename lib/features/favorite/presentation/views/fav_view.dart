import 'package:flutter/material.dart';
import 'package:home_style/core/utils/style.dart';
import 'package:home_style/features/favorite/presentation/views/widgets/fav_view_body.dart';

class FavView extends StatelessWidget {
  const FavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('Favorite',
            style: AppStyle.textStyle15Black.copyWith(
              fontSize: MediaQuery.of(context).size.width * 0.04,
            )),
      ),
      body: const FavViewBody(),
    );
  }
}

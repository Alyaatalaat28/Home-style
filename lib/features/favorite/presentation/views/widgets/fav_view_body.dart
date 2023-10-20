import 'package:flutter/material.dart';
import 'package:home_style/core/utils/style.dart';

class FavViewBody extends StatefulWidget {
  const FavViewBody({Key? key}) : super(key: key);

  @override
  State<FavViewBody> createState() => _FavViewBodyState();
}

class _FavViewBodyState extends State<FavViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..repeat();

    _animation = Tween<double>(
      begin: 100.0,
      end: 200.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.favorite_border_rounded,
              size: 50.0,
            ),
            const SizedBox(height: 10),
            Text(
              'Your Favorite is empty',
              style: AppStyle.textStyle15Black.copyWith(
          fontSize: MediaQuery.of(context).size.width*0.04,
        ),
            ),
          ],
        ),
      ),
    );
  }
}
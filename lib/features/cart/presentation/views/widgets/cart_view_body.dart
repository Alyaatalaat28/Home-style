import 'package:flutter/material.dart';
import 'package:home_style/core/utils/style.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({Key? key}) : super(key: key);

  @override
  State<CartViewBody> createState() => _FavViewBodyState();
}

class _FavViewBodyState extends State<CartViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

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
            Icon(
              Icons.shopping_cart_checkout_outlined,
              size: _animation.value,
            ),
            const SizedBox(height: 10),
            Opacity(
              opacity: 1 - _animation.value / 200.0,
              child: Text(
                'Your Cart is empty',
                style: AppStyle.textStyle15Black.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

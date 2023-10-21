import 'package:flutter/material.dart';

class AvailableColor extends StatelessWidget {
  const AvailableColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          color: const Color(0xff7BA275),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 24,
          height: 24,
          color: Colors.white,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 24,
          height: 24,
          color: const Color(0xff171717),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 24,
          height: 24,
          color: Colors.red,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 24,
          height: 24,
          color: const Color.fromARGB(255, 182, 165, 16),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 24,
          height: 24,
          color: Colors.brown,
        ),
      ],
    );
  }
}

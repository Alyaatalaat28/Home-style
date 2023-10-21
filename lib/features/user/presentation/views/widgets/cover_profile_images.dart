import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                width: double.infinity,
                height: 140.0,
                decoration: const BoxDecoration(
                  color: scafColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                ),
              )),
          CircleAvatar(
            radius: 65.0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/new.png',
              ),
              radius: 60.0,
            ),
          ),
        ],
      ),
    );
  }
}

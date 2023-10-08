import 'package:flutter/material.dart';
import 'package:home_style/core/constants.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: scafColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  left: 0,
                  top: 48,
                  child: Align(
                    child: SizedBox(
                      height: 119,
                      width: 130,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: stackColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(91.5 ),
                            topRight: Radius.circular(91.5 ),
                            bottomLeft: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Align(
                    child: SizedBox(
                      height: 93,
                      width: 50,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: stackColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(91.5 ),
                            topRight: Radius.circular(91.5 ),
                            bottomLeft: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(3.14159), // Rotate 180 degrees
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                    left: 0,
                    top: 48,
                    child: Align(
                      child: SizedBox(
                        height: 119,
                        width: 130,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: stackColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(91.5 ),
                              topRight: Radius.circular(91.5 ),
                              bottomLeft: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        height: 93,
                        width: 50,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: stackColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(91.5 ),
                              topRight: Radius.circular(91.5 ),
                              bottomLeft: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:home_style/core/utils/constants.dart';
import 'package:home_style/core/utils/style.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog(
      {super.key, required this.title, required this.content});
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: AppStyle.textStyle15Black.copyWith(
          fontSize: MediaQuery.of(context).size.width * 0.05,
        ),
      ),
      content: Text(content,
          style: AppStyle.textStyle15Black.copyWith(
            fontSize: MediaQuery.of(context).size.width * 0.035,
            height: 1.5,
            color: buttonColor.withOpacity(0.7),
          )),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Ok',
            style: AppStyle.textStyle15Black.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: scafColor),
          ),
        ),
      ],
    );
  }
}

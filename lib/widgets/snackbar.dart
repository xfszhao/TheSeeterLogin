import 'package:flutter/material.dart';

class CustomSnackBar {
  CustomSnackBar(BuildContext context, Widget content,
      {Color backgroundColor = Colors.green}) {
    final SnackBar snackBar = SnackBar(
        action: SnackBarAction(
          label: 'clicked',
          onPressed: () {},
        ),
        backgroundColor: backgroundColor,
        content: content,
        behavior: SnackBarBehavior.floating);

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

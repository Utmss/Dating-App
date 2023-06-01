import 'package:flutter/material.dart';

class TwoLineItem extends StatelessWidget {
  final String firsttext, secondtext;

  const TwoLineItem(
      {super.key, required this.firsttext, required this.secondtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firsttext,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          secondtext,
          style: TextStyle(fontStyle: FontStyle.italic),
        )
      ],
    );
  }
}

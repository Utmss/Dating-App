import 'package:flutter/material.dart';

class Profilecard extends StatelessWidget {
  final String firstText, secondText;
  final Widget icons;
  const Profilecard(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding:
            EdgeInsets.only(left: 16.0, top: 16.0, bottom: 24.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.topRight, child: icons),
            Text(
              firstText,
            ),
            Text(
              secondText,
            )
          ],
        ),
      ),
    );
  }
}

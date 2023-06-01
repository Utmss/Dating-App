import 'package:flutter/material.dart';
import 'package:flutter_application_2/TwoLineItem.dart';

class ProfileInfocard extends StatelessWidget {
  final firsttext, secondtext, hasimage, Iconimage;
  const ProfileInfocard({
    super.key,
    this.firsttext,
    this.secondtext,
    this.hasimage = false,
    this.Iconimage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: hasimage
          ? Image.asset(
              Iconimage,
              width: 20,
              height: 80,
            )
          : TwoLineItem(
              firsttext: firsttext,
              secondtext: secondtext,
            ),
    ));
  }
}

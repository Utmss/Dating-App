import 'package:flutter/material.dart';

class RoundedImg extends StatelessWidget {
  final String imagepath;
  final Size size;
  const RoundedImg(
      {super.key,
      required this.imagepath,
      this.size = const Size.fromWidth(120)});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagepath,
        width: size.width,
        height: size.width,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

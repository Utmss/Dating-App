import 'package:flutter/material.dart';

class Opaqueimg extends StatelessWidget {
  final imageurl;
  const Opaqueimg({super.key, @required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[Image.asset(
        imageurl,
        width: double.maxFinite,
        height: double.maxFinite,
        fit: BoxFit.fill,
      ),
      Container(
        color: Color.fromARGB(255, 212, 236, 115).withOpacity(0.85),
      )
      ] 
    );
  }
}

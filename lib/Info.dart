import 'package:flutter/material.dart';
import 'package:flutter_application_2/rounded.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RoundedImg(
            imagepath: "assets/image/like.jpeg",
            size: Size.fromWidth(120),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "UTKARSH MISHRA",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "(Software Engineer)",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/Location.png",
                width: 15.0,
                // color: Colors.white,
              ),
              Text(
                " Mishra Market Banda,Shahjahanpur(242042)",
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
              )
            ],
          )
        ],
      ),
    );
  }
}

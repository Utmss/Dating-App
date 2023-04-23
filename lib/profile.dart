import 'package:flutter/material.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/Screenshot (62).png",
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            color: Color.fromARGB(255, 233, 241, 122)
                                .withOpacity(0.89),
                          )
                        ],
                      )
                    ],
                  )),
              Expanded(
                  flex: 6,
                  child: Container(
                    color: Color.fromARGB(255, 143, 137, 137),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

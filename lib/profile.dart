import 'package:flutter/material.dart';
import 'package:flutter_application_2/Info.dart';
import 'package:flutter_application_2/Profile_card.dart';
import 'package:flutter_application_2/opaque_img.dart';

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
              flex: 4,
              child: Stack(
                children: [
                  Opaqueimg(imageurl: "assets/image/profile.jpeg"),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "My Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: 20.0),
                          ),
                        ),
                        MyInfo(),
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                child: Table(children: [
                  TableRow(children: [
                    Profilecard(
                      firstText: '19',
                      secondText: 'Proposal',
                      icons: Icon(Icons.star,
                          color: Color.fromARGB(255, 212, 236, 115)),
                    ),
                    Profilecard(
                        firstText: '11',
                        secondText: 'Dating',
                        icons: Image.asset(
                          'assets/icons/dating.png',
                          width: 20,
                        )),
                  ]),
                  TableRow(children: [
                    Profilecard(
                        firstText: '34',
                        secondText: 'Matches',
                        icons: Image.asset(
                          'assets/icons/smile.png',
                          width: 20,
                        )),
                    Profilecard(
                        firstText: '15',
                        secondText: 'Unmatches',
                        icons: Image.asset(
                          'assets/icons/sad.png',
                          width: 20,
                        )),
                  ]),
                  TableRow(children: [
                    Profilecard(
                        firstText: '17',
                        secondText: 'ReMatches',
                        icons: Icon(
                          Icons.refresh,
                          color: Color.fromARGB(255, 220, 241, 127),
                        )),
                    Profilecard(
                        firstText: '15',
                        secondText: 'Allmatches',
                        icons: Image.asset(
                          'assets/icons/Checklist.png',
                          width: 20,
                        )),
                  ]),
                  TableRow(children: [
                    Profilecard(
                        firstText: '294',
                        secondText: 'ProfileViews',
                        icons: Image.asset(
                          'assets/icons/image.png',
                          width: 20,
                        )),
                    Profilecard(
                        firstText: '27',
                        secondText: 'Likes',
                        icons: Image.asset(
                          'assets/icons/Plike.png',
                          width: 20,
                        )),
                  ]),
                ]),
              ),
            )
          ],
        ),
      ],
    ));
  }
}

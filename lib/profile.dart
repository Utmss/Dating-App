import 'package:flutter/material.dart';
import 'package:flutter_application_2/Info.dart';
import 'package:flutter_application_2/Profile_card.dart';
import 'package:flutter_application_2/Profile_info.dart';
import 'package:flutter_application_2/likedme.dart';
import 'package:flutter_application_2/opaque_img.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    final Screenheight = MediaQuery.of(context).size.height;
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
                padding: EdgeInsets.only(top: 50),
                color: Colors.white,
                child: Table(children: [
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Likedme()));
                      },
                      child: Profilecard(
                          firstText: '27',
                          secondText: 'Likes',
                          icons: Image.asset(
                            'assets/icons/Plike.png',
                            width: 20,
                          )),
                    ),
                  ]),
                ]),
              ),
            )
          ],
        ),
        Positioned(
          top: Screenheight * (4 / 9) - (80 / 1.5),
          left: 16,
          right: 16,
          child: Container(
            child: Row(children: [
              ProfileInfocard(
                firsttext: '67%',
                secondtext: 'Progress',
              ),
              SizedBox(
                width: 5.0,
              ),
              ProfileInfocard(
                hasimage: true,
                Iconimage: 'assets/image/Pulse.jpg',
              ),
              SizedBox(
                width: 5.0,
              ),
              ProfileInfocard(
                firsttext: '52',
                secondtext: 'level',
              )
            ]),
            height: 80,
          ),
        ),
      ],
    ));
  }
}

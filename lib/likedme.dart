// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/data.dart';

class Likedme extends StatelessWidget {
  const Likedme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'SELECT',
          style: TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Liked Me",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 201, 200, 200))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  "Likes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: Text(
                    '5',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                Spacer(),
                Text(
                  '5 min',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Data(
                    Name: 'Rsh',
                    Distance: '10 kilometer',
                    Status: "online",
                    Profileimage: 'assets/image/RS.jpg',
                    Iconimg: "assets/icons/Location.png",
                  ),
                );
              },
              itemCount: 9,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model.dart';

class Likedme extends StatefulWidget {
  const Likedme({
    super.key,
  });

  @override
  State<Likedme> createState() => _LikedmeState();
}

class _LikedmeState extends State<Likedme> {
  static List<Model> main_profile_list = [
    Model('Rash', "10 Kilometer", "assets/image/RS.jpg", "ONLINE"),
    Model('Ash', "7 Kilometer", "assets/image/ASH.jpg", "offline"),
    Model('Kiara', '13 Kilometer', 'assets/image/kiara.jpg', "offline"),
    Model('Av', '2 Kilometer', 'assets/image/Avneet.jpg', "ONLINE"),
    Model('Ali', '11 Kilometer', 'assets/image/Alia.jpg', "ONINE"),
    Model('Shir', '9 Kilometer', 'assets/image/shirley.jpg', "offline"),
  ];
  List<Model> display_list = List.from(main_profile_list);

  void update_list(String value) {
    setState(() {
      display_list = main_profile_list
          .where((element) =>
              element.Name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

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
          TextField(
            onChanged: ((value) {
              update_list(value);
            }),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black),
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
                    '6',
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
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        "Not found",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].Name!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        subtitle: Text(
                          '${display_list[index].Address}',
                          style: TextStyle(
                              color: Colors.black, fontStyle: FontStyle.italic),
                        ),
                        trailing: Text(
                          "${display_list[index].Status!}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 31, 183, 1),
                              fontSize: 20),
                        ),
                        leading: ClipOval(
                            child: Image.asset("${display_list[index].photo}")),
                      ),
                    ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  final String Name;
  final String Distance;
  final Iconimg;
  final Profileimage;
  final String Status;
  const Data(
      {
        super.key,
      required this.Name,
      required this.Distance,
      this.Profileimage,
      required this.Status, this.Iconimg
      
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Image.asset(
            Iconimg,
            width: 15.0,
            height: 15.0,
          ),
          Text(
            Distance,
          ),
        ],
      ),
      leading: ClipOval(
          child: Image.asset(
        Profileimage,
        width: 50,
        height: 60,
      )),
      trailing: SizedBox(
        width: 75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
                Spacer(),
                Text(
                  Status,
                  style: TextStyle(fontSize: 10, color: Colors.green),
                )
              ],
            )),
            Expanded(
                child: Icon(
              Icons.star,
              color: Colors.blue,
            ))
          ],
        
        )
      ),
      
    );
    
  }
}
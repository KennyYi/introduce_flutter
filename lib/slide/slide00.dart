import 'package:flutter/material.dart';

class Slide00 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide00();
}

class _Slide00 extends State<Slide00> {

  @override
  Widget build(BuildContext context) {

    return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Introducing Flutter', style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20.0),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            Text('Kenny', style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87
            ),),
          ],
        )
      );
  }
}
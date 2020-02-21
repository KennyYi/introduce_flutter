import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide03();
}

class _Slide03 extends State<Slide03> {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Text("Beautiful UI", style: CommonStyle.title(),),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 300,
                  child: Image.network('https://media.giphy.com/media/4WFFKravkim0CkLfQT/giphy.gif'),
                ),
                Container(
                  width: 300,
                  child: Image.network('https://flutterawesome.com/content/images/2019/10/another.gif'),
                ),
                Container(
                  width: 300,
                  child: Image.network('https://user-images.githubusercontent.com/2844046/60992636-2fb96800-a34d-11e9-9b61-4821d1799d99.gif'),
                ),
              ],
            )
          ),
        ],
      )
    );
  }
}
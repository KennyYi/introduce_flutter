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
                  child: Image.asset('assets/sample_01.gif', filterQuality: FilterQuality.medium),
                ),
                Container(
                  width: 300,
                  child: Image.asset('assets/sample_02.gif', filterQuality: FilterQuality.medium),
                ),
                Container(
                  width: 300,
                  child: Image.asset('assets/sample_03.gif', filterQuality: FilterQuality.medium,),
                ),
              ],
            )
          ),
        ],
      )
    );
  }
}
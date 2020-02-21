import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide06 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide06();
}

class _Slide06 extends State<Slide06> {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Text("Modern React Style", style: CommonStyle.title()),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/sample_layout.png'),
                Image.asset('assets/sample_layout_tree.png'),
              ],
            )
          ),
        ],
      )
    );
  }
}
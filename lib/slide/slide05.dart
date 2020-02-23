import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide05 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide05();
}

class _Slide05 extends State<Slide05> {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Center(child: Image.asset('assets/widget_tree.jpg')),
          Text("Widget", style: CommonStyle.title()),
        ],
      )
    );
  }
}
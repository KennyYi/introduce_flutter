import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide04 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide04();
}

class _Slide04 extends State<Slide04> {

  int _animationIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          GestureDetector(
            child: Center(child: Image.asset('assets/architecture.png')),
            onTap: () {setState(() => _animationIndex++);},
          ),
          Text("Architecture", style: CommonStyle.title(),),
        ],
      )
    );
  }
}
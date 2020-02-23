import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide10();
}

class _Slide10 extends State<Slide10> {

  int _animationIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          GestureDetector(
            child: Center(child: Image.asset('assets/team.png', fit: BoxFit.cover)),
            onTap: () => setState(() => _animationIndex++),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text("스터디그룹 멤버 모집중", style: CommonStyle.title(color: Colors.white),),
          )
        ],
      )
    );
  }
}
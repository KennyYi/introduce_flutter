import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide08 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide08();
}

class _Slide08 extends State<Slide08> {

  int _animationIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[

          Center(
            child: Offstage(
              offstage: (_animationIndex != 1),
              child: Image.asset('assets/2assists.jpg'),
            ),
          ),

          GestureDetector(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('- 든든한 뒷배 (Google)', style: (_animationIndex < 1)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 15.0),
                  Text('- Dart Foreign Function Interface (FFI)', style: (_animationIndex < 2)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 15.0),
                  Text('- 개발자들 사이에서 폭풍 인기 몰이중', style: (_animationIndex < 3)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 5.0),
                  Text('  - 2017 Stackoverflow survey 응답자의 61.4%가 뽑은 끔찍한(Dreaded) 언어 => Dart', style: (_animationIndex < 4)?CommonStyle.transparent():CommonStyle.color(Colors.grey),),
                  Text('  - 2019 Stackoverflow survey 응답자의 66.3%가 뽑은 사랑하는(Loved) 언어 => Dart', style: (_animationIndex < 5)?CommonStyle.transparent():CommonStyle.color(Colors.deepOrangeAccent),),
                  Text('  - 2019 Stackoverflow survey 응답자의 75.4%가 뽑은 사랑하는(Loved) 플랫폼 => Flutter', style: (_animationIndex < 6)?CommonStyle.transparent():CommonStyle.color(Colors.deepOrangeAccent),),
                  SizedBox(height: 15.0),
                  Text('- Multi platform', style: (_animationIndex < 7)?CommonStyle.transparent():CommonStyle.common(),),
                ],
              )
            ),
            onTap: () {
              setState(() => _animationIndex++);
            },
          ),
          Text("Why Flutter?", style: CommonStyle.title(),),
        ],
      )
    );
  }
}
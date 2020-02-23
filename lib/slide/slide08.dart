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
          GestureDetector(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Learning curve', style: (_animationIndex < 1)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 5.0),
                  Text('  - Dart 2.0', style: (_animationIndex < 2)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 5.0),
                  Text('  - 새로운 UI 구조', style: (_animationIndex < 3)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 15.0),
                  Text('Echosystem', style: (_animationIndex < 4)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 5.0),
                  Text('  - 약간씩 부족한 오픈소스 라이브러리', style: (_animationIndex < 5)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 5.0),
                  Text('  - 모바일 외에는 아직 Beta', style: (_animationIndex < 6)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 5.0),
                  Text('  - FFI, Desktop...', style: (_animationIndex < 6)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 15.0),
                  Text('결국에는 Native code 가 필요함', style: (_animationIndex < 7)?CommonStyle.transparent():CommonStyle.common(),),
                  SizedBox(height: 15.0),
                  Text('모바일 외의 다른 플랫폼까지 동시 지원하려면 복잡도가 상승', style: (_animationIndex < 8)?CommonStyle.transparent():CommonStyle.common(),),
                ],
              )
            ),
            onTap: () {
              setState(() => _animationIndex++);
            },
          ),
          Text("Cons", style: CommonStyle.title(),),
        ],
      )
    );
  }
}
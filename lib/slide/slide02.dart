import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide02 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide02();
}

class _Slide02 extends State<Slide02> {

  int _animationIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Text("Fast", style: CommonStyle.title(),),
          GestureDetector(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('- ARM code', style: CommonStyle.common(),),
                        SizedBox(height: 15.0,),
                        Text('- Hot reload', style: CommonStyle.common(),),
                      ],
                    )
                  ),
                  Expanded(
                    flex: 3,
                    child: Image.asset('assets/hot_reload.gif')
                  ),
                ]
              )
            ),
            onTap: () {
              setState(() => _animationIndex++);
            },
          ),
        ],
      )
    );
  }
}
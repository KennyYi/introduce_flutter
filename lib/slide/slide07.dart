import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide07 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide07();
}

class _Slide07 extends State<Slide07> {

  int _animationIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
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
                        Text('- Platform Channel', style: CommonStyle.common(),),
                        Text('  - MethodChannel', style: CommonStyle.color(Colors.indigo),),
                        Text('  - EventChannel', style: CommonStyle.color(Colors.indigo),),
                      ],
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset('assets/platform_channel.png')
                  ),
                ]
              )
            ),
            onTap: () {
              setState(() => _animationIndex++);
            },
          ),
          Text("Platform Specific Code", style: CommonStyle.title(),),
        ],
      )
    );
  }
}
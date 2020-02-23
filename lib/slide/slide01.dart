import 'package:flutter/material.dart';
import '../style/text_style.dart';

class Slide01 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Slide01();
}

class _Slide01 extends State<Slide01> {

  int _animationIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Text("Flutter?", style: CommonStyle.title(),),
          GestureDetector(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("- Google's ", style: CommonStyle.common(),),
                            AnimatedDefaultTextStyle(
                              child: Text("mobile"), 
                              style: (_animationIndex == 0)?CommonStyle.common():CommonStyle.strike(color: Colors.deepOrangeAccent), 
                              duration: const Duration(milliseconds: 300)),
                            Text(" UI toolkit ", style: CommonStyle.common(),),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: <Widget>[
                            Text("- Support iOS, Android", style: CommonStyle.common(),),
                            AnimatedDefaultTextStyle(
                              child: Text(", Web, Desktop (and Embedded)"), 
                              style: (_animationIndex < 2)?CommonStyle.transparent():CommonStyle.color(Colors.deepOrangeAccent), 
                              duration: const Duration(milliseconds: 300)),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: <Widget>[
                            Text("- Programming language: ", style: CommonStyle.common(),),
                            AnimatedDefaultTextStyle(
                              child: Text("Dart2"), 
                              style: (_animationIndex < 3)?CommonStyle.transparent():CommonStyle.color(Colors.deepOrangeAccent), 
                              duration: const Duration(milliseconds: 300)),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: <Widget>[
                            Text("- Compiled to : ", style: CommonStyle.common(),),
                            AnimatedDefaultTextStyle(
                              child: Text("Native ARM code"), 
                              style: (_animationIndex < 4)?CommonStyle.transparent():CommonStyle.color(Colors.deepOrangeAccent), 
                              duration: const Duration(milliseconds: 300)),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Text("- Free and Open source", style: (_animationIndex < 5)?CommonStyle.common():CommonStyle.color(Colors.deepOrangeAccent),),
                      ],
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset('assets/logo.png')
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
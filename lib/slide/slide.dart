import 'package:flutter/material.dart';
import 'slide00.dart';
import 'slide01.dart';
import 'slide02.dart';
import 'slide03.dart';
import 'slide04.dart';
import 'slide05.dart';
import 'slide06.dart';
import 'slide07.dart';

class Slide extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _Slide();
}

class _Slide extends State<Slide> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(),
      floatingActionButton: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => backward(context),
              child: Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () => forward(context),
              child: Icon(Icons.navigate_next),
            )
          ]
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void backward(BuildContext context) {
    if (_index > 0) {
      setState(() => _index--);
    }
  }

  void forward(BuildContext context) {
    if (_index < 7) {
      setState(() => _index++);
    }
  }

  Widget getPage() {

    switch (_index) {
      case 0: return Slide00();
      case 1: return Slide01();
      case 2: return Slide02();
      case 3: return Slide03();
      case 4: return Slide04();
      case 5: return Slide05();
      case 6: return Slide06();
      case 7: return Slide07();
      default: return null;
    }
  }
}
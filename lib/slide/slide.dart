import 'package:flutter/material.dart';
import 'slide00.dart';
import 'slide01.dart';
import 'slide02.dart';
import 'slide03.dart';
import 'slide04.dart';
import 'slide05.dart';
import 'slide06.dart';
import 'slide07.dart';
import 'slide08.dart';
import 'slide09.dart';
import 'slide10.dart';

class Slide extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _Slide();
}

class _Slide extends State<Slide> {

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageView(),
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
    // if (_index > 0) {
    //   setState(() => _index--);
    // }
    _pageController.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void forward(BuildContext context) {
    // if (_index < 10) {
    //   setState(() => _index++);
    // }
    _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  Widget _getPage(index) {
    
    switch (index) {
      case 0: return Slide00();
      case 1: return Slide01();
      case 2: return Slide02();
      case 3: return Slide03();
      case 4: return Slide04();
      case 5: return Slide05();
      case 6: return Slide06();
      case 7: return Slide07();
      case 8: return Slide08();
      case 9: return Slide09();
      case 10: return Slide10();
      default: return null;
    }
  }

  PageView _buildPageView() {
    return PageView.builder(
      itemBuilder: (context, index) {
        return _getPage(index);
      },
      itemCount: 11,
      controller: _pageController,

    );
  }
}
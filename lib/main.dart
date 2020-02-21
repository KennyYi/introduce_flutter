import 'package:flutter/material.dart';
import 'slide/slide.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduce Flutter',
      theme: ThemeData(primarySwatch: Colors.brown,),
      initialRoute: '/',
      routes: {
        '/': (context) => Slide(),
      },
      // home: Slide01(),
    );
  }
}


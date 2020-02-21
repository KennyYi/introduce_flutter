import 'package:flutter/material.dart';

class CommonStyle {

  static TextStyle title() {
    return TextStyle(
      color: Colors.blue[900],
      fontSize: 80.0,
      fontWeight: FontWeight.bold
    );
  }

  static TextStyle common() {
    return TextStyle(
      color: Colors.black,
      fontSize: 40.0
    );
  }

  static TextStyle transparent() {
    return TextStyle(
      color: Colors.transparent,
      fontSize: 40.0
    );
  }

  static TextStyle strike() {

    return TextStyle(
      color: Colors.black,
      decoration: TextDecoration.lineThrough,
      fontSize: 40.0
    );
  }

  static TextStyle color(Color color) {
    return TextStyle(
      color: color,
      fontSize: 40.0
    );
  }
}
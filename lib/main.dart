/**
 * This is a Task Management Project build by :
 * Ekpreet Singh
 * M Shreyaskumar Sharma
 * D Sai Reshikesh
 * Akshay Nagar
 */

import 'package:first_app/screens/screen_01.dart';
import 'package:first_app/screens/screen_02.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BaseWidget());
}

class BaseWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChildWidget();
  }
}

class ChildWidget extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Screen_1(),
        '/screen_2': (context) => Screen_2(),
      },
    );
  }
}

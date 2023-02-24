import 'package:first_app/screens/screen_02.dart';
import 'package:flutter/material.dart';

class Screen_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChildScreen_1();
  }
}

class ChildScreen_1 extends State<Screen_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/appLogo.png",
                width: 250,
                height: 250,
              ),
              Column(
                children: [
                  Text(
                    "Welcome to Taskzz",
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                    padding: EdgeInsets.all(50),
                    child: Text(
                      "Keep track of important things that you need to get done in one place",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: onPressedGetStarted,
                    child: Text("Get Started"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressedGetStarted() {
    Navigator.pushNamedAndRemoveUntil(context, '/screen_2', (route) => false);
  }
}

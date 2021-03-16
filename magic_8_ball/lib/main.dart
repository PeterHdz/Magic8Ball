import 'package:flutter/material.dart';
import 'package:magic_8_ball/screens/principal_screen.dart';

void main() {
  runApp(Magic8Ball());
}

class Magic8Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.lightBlueAccent,
        accentColor: Colors.white,
      ),
      home: PrincipalScreen(),
    );
  }
}

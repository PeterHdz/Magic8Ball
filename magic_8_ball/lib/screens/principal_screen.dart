import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PrincipalScreen extends StatefulWidget {
  static const String id = 'principal_screen';
  @override
  _PrincipalScreenState createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Magic 8 Ball',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 14.0,
            ),
            Text(
              'Ask me anything',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              'Tap the ball to get an answer',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ],
        ),
      ),
    );
  }
}

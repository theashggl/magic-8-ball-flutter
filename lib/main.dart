import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
     MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.lightBlueAccent,
         appBar: AppBar(
           title: Text(
             'Ask Me Anything',
           ),
         ),
         body: ball8(),
       ),
     )
    );

class ball8 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ball8> {
  int ball = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        onPressed: () {
          setState(
            () {
              ball = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset('images/ball$ball.png'),
      ),
    ],
    );
  }
}

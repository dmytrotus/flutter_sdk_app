import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
        child: new Column(
          children: <Widget>[
            new Text('blabla'),
            new Text('Tap to Start')
          ]
        )
      )
    );
  }
}
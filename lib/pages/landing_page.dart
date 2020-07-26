import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
        onTap: () => print('We tapped  the button'),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Lets quizz', style: new TextStyle(color:Colors.white, fontSize:50.0, fontWeight: FontWeight.bold)),
            new Text('Tap to Start', style: new TextStyle(color:Colors.white70, fontSize:25.0, fontWeight: FontWeight.bold))
          ]
        )
      )
    );
  }
}
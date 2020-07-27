import 'package:flutter/material.dart';
import 'package:flutter_sdk_app/UI/question_text.dart';

//import '../utils/question.dart';
//import '../utils/quiz.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';


class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column( //this is main page
          children: <Widget>[
            new AnswerButton(true, () => print("You anwered True")),
            new QuestionText("Pizza is super nice", 1),
            new AnswerButton(false, () => print('You answered False')),
          ]
        )
      ]
    );
  }
}
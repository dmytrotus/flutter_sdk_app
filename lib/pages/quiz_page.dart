import 'package:flutter/material.dart';
import 'package:flutter_sdk_app/UI/question_text.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';


class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question('Катя то мурчик', true),
    new Question('Катя вредна', true),
    new Question('Сьогодні був дощ', false)
  ]);

  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlaySholdBeVisible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column( //this is main page
          children: <Widget>[
            new AnswerButton(true, () => print("You anwered True")),
            new QuestionText(questionText, questionNumber),
            new AnswerButton(false, () => print('You answered False')),
          ]
        ),
        overlaySholdBeVisible == true ? new CorrectWrongOverlay(true) : new Container(),
      ]
    );
  }
}
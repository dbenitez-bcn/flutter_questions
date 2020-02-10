import 'package:flutter/material.dart';
import 'package:flutter_questions/models/question.dart';
import 'package:flutter_questions/widgets/time_count.dart';

class QuestionDetails extends StatelessWidget {
  final Question question;

  QuestionDetails(this.question);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildTitle(context),
          buildTimeCount(),
          buildButtons(context)
        ],
      ),
    );
  }

  TimeCount buildTimeCount() => TimeCount(10);

  Center buildTitle(BuildContext context) {
    return Center(
          child: Text(
            question.title,
            style: Theme.of(context).textTheme.title,
          )
      );
  }

  Column buildButtons(BuildContext context) {
    return Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            child: Text(question.answers[0]),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(question.answers[1]),
          ),
        ],
      );
  }
}

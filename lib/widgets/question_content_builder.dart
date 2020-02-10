import 'package:flutter/material.dart';
import 'package:flutter_questions/models/question.dart';
import 'package:flutter_questions/widgets/question_details.dart';

class QuestionContentBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Question>(
      future: getQuestion(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return QuestionDetails(snapshot.data);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Future<Question> getQuestion() async {
    await Future.delayed(Duration(seconds: 2));
    return Question("This is a question", ["First", "Second"]);
  }
}

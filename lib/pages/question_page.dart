import 'package:flutter/material.dart';
import 'package:flutter_questions/widgets/question_content_builder.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question page"),
      ),
      body: QuestionContentBuilder(),
    );
  }
}

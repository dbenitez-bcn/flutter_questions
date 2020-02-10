import 'package:flutter/material.dart';
import 'package:flutter_questions/pages/question_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter questions"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => QuestionPage()));
          },
          child: Text("Play"),
        ),
      ),
    );
  }
}

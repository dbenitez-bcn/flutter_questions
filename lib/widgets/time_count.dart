import 'package:flutter/material.dart';

class TimeCount extends StatelessWidget {
  final int times;

  TimeCount(this.times);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: changeTime(),
      initialData: "$times",
      builder: (context, snapshot) {
        return Center(
          child: Text(
            snapshot.data,
            style: TextStyle(fontSize: 48.0),
          ),
        );
      },
    );
  }

  Stream<String> changeTime() async* {
    for (int i = 0; i < times; i++) {
      yield "${times - i}";
      await Future.delayed(Duration(seconds: 1));
    }

    yield "Time out!";
  }
}

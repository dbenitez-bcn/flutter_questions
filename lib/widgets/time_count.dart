import 'package:flutter/material.dart';

class TimeCount extends StatefulWidget {
  final int times;

  TimeCount(this.times);

  @override
  _TimeCountState createState() => _TimeCountState();
}

class _TimeCountState extends State<TimeCount> {
  String countText;
  @override
  void initState() {
    countText = "${widget.times}";
    changeTime();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        countText,
        style: TextStyle(
          fontSize: 48.0
        ),
      ),
    );
  }

  Future changeTime() async {
    for(int i = 0; i < widget.times; i++){
      setState(() {
        countText = "${widget.times - i}";
      });
      await Future.delayed(Duration(seconds: 1));
    }

    setState(() {
      countText = "Time out!";
    });
  }
}

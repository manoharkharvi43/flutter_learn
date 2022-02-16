import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final Function onClick;

  const DatePicker({Key? key, required this.onClick}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";
  String? Data = "Hello";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        color: Colors.amber[600],
        child: const Center(child: Text('Entry A')),
      ),
      onTap: () {
        widget.onClick("hello passed");
      },
    );
  }
}

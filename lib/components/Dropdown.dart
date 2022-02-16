import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? DropdownValue;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: DropdownValue,
          items: <String>["Male", "Female"]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              DropdownValue = value;
            });
          },
          elevation: 2,
          isExpanded: false,
          hint: Container(
            child: Text("Select Gender"),
          ),
        ),
      )
    ]);
  }
}

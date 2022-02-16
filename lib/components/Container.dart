import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerComp extends StatelessWidget {
  const ContainerComp({Key? key, @required this.title , @required this.color}) : super(key: key);
  final String? title;
  final Color ? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        child: Center(
          child: Text(
            "${title != null ? title : "Hello"}",
          ),
        ),
        height: 10,
        color:color ?? Colors.indigoAccent,
        width: 130,
      ),
    );
  }
}

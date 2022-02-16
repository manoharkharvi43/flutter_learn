import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/Container.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ContainerComp(title: "Comp1"),
                ContainerComp(title: "Comp2"),
                ContainerComp(title: "Comp3"),
                ContainerComp(title: "Comp4"),
                ContainerComp(title: "Comp5"),
                ContainerComp(title: "Comp6"),
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ContainerComp(title: "Comp1"),
                ContainerComp(title: "Comp2"),
                ContainerComp(title: "Comp3"),
                ContainerComp(title: "Comp4"),
                ContainerComp(title: "Comp5", color: Colors.red),
              ],
            ),
          ),
        ],
      ),
      alignment: Alignment.topCenter,
    );
  }
}

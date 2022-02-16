import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/components/TextInput.dart';

class HomePage extends StatefulWidget {
  final int? counter;
  const HomePage({Key? key, @required this.counter}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  String name = "";
  String email = "";
  String phone = "";


  @override
  void initState() {
    emailController.addListener(() {
      // emailController.text;
      setState(() {
        email = emailController.text;
      });
    });

    nameController.addListener(() {
      setState(() {
        name = nameController.text;
      });
    });

    phoneController.addListener(() {
      setState(() {
        phone = phoneController.text;
      });
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          children: [
            TextInput(
              placeholder: "Name",
              type: TextInputType.name,
              inputController: nameController,
            ),
            TextInput(
              placeholder: "Email",
              type: TextInputType.emailAddress,
              inputController: emailController,
            ),
            TextInput(
              placeholder: "Phone",
              type: TextInputType.number,
              inputController: phoneController,
            )
          ],
        ),
        Container(
          child: Text(
            "$name"
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
            ),
            onPressed: () {},
            child: Text('Sign up'),
          ),
        )
      ],
    );
  }
}

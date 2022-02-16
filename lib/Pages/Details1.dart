import 'package:flutter/cupertino.dart';
import 'package:test_app/components/DatePicker.dart';
import 'package:test_app/components/Dropdown.dart';
import 'package:test_app/components/TextInput.dart';

class Details1 extends StatefulWidget {
  const Details1({Key? key}) : super(key: key);

  @override
  _Details1State createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  final nameController = TextEditingController();
  final placeController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(() {
      print("Name , ${nameController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          TextInput(
            placeholder: "Name",
            inputController: nameController,
            type: TextInputType.name,
          ),
          TextInput(
            placeholder: "Place",
            inputController: nameController,
            type: TextInputType.name,
          ),
          Center(
            child: Container(
              child: Dropdown(),
              // width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}

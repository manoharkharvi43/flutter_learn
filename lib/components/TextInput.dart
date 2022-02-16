import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// typedef void VoidCallback(String val);

class TextInput extends StatefulWidget {
  const TextInput(
      {Key? key,
      @required this.placeholder,
      this.type,
      @required this.inputController,
      @required this.onChanged})
      : super(key: key);
  final Function ? onChanged;
  final String? placeholder;
  final TextInputType? type;
  final TextEditingController? inputController;
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // inputController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: widget.placeholder,
          ),
          keyboardType: widget.type,
          inputFormatters: widget.type == TextInputType.number
              ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
              : null,
          controller: widget.inputController,
          // onChanged: onChanged,
        ),
      ),
    );
  }
}

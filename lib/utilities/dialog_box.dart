import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  DialogBox(
      {Key? key, this.controller, required this.onCancel, required this.onSave})
      : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xffc79898),
      content: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  hintText: "Do New Task",
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                const SizedBox(
                  width: 10,
                ),
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                )
              ])
            ],
          )),
    );
  }
}

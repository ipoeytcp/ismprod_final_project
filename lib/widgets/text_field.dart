import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class TextFieldIsm extends StatelessWidget {
  final String label;
  final String hint;
  // ignore: use_super_parameters
  const TextFieldIsm({
    Key? key,
    required this.label,
    required this.hint, 
    //required InputDecoration decoration, required bool autofocus, required bool showCursor,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        showCursor: true,
        autofocus: true,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade300,
              fontStyle: FontStyle.italic),
          labelText: label,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)),
        ), 
      ),
    );
  }
}
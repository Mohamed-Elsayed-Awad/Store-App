import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({super.key, required this.hint, required this.onChange, this.inputType});
  final String hint;
  Function(String)? onChange;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: const Color.fromARGB(122, 0, 0, 0)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

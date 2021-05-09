import 'package:flutter/material.dart';


///Input Decoration Widget

InputDecoration buildInputDecoration({labelText, hintText, suffixIcon}) {
  return InputDecoration(
    labelText: labelText,
    suffixIcon: suffixIcon,

    labelStyle: TextStyle(
        color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18.0),
    hintText: hintText,
    hintStyle: TextStyle(
        color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14.0),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
  );
}




bool isValidEmail(String value) {
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
}
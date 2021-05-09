import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final String text;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;
  final bool isNumber;
  final Widget icon;
  final bool isLabelText;
  final onChanged;
  final List<TextInputFormatter> inputFormatter;
  final TextEditingController controller;


  MyTextFormField({
    this.hintText,
    this.text,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
    this.inputFormatter,
    this.isNumber=false,
    this.icon,
    this.onChanged,
    this.isLabelText=true,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    TextInputType textInputType;

    if(isEmail){
      textInputType=TextInputType.emailAddress;
    }else if(isNumber){
      textInputType=TextInputType.number;
    }else{
      textInputType=TextInputType.text;
    }

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        initialValue: text,
        style: TextStyle(color: Colors.black),
        inputFormatters: inputFormatter,
        decoration: InputDecoration(
          labelText: isLabelText?hintText:null,
          hintText: "",
          suffixIcon: icon==null?null:icon,
          contentPadding: EdgeInsets.all(15.0),
          border: OutlineInputBorder(
            borderSide:  BorderSide(color: Colors.teal),
          ),
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        keyboardType: textInputType,
      ),
    );
  }
}
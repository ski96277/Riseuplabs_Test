import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  double width;
  double margin;
  double height;
  Function onPressed;
  String buttonText;
  Color backgroundColor;
  Color buttonTextColor;
  Color borderColor;

  CustomButton(
      {this.width,
      this.margin,
      this.height,
      this.onPressed,
      this.buttonText,
      this.backgroundColor,
      this.buttonTextColor,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: margin ?? 60.0),
        width: width ?? 40,
        height: height ?? 40,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonText ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(color: buttonTextColor),
          ),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(backgroundColor), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: borderColor)))),
        ),
      ),
    );
  }
}

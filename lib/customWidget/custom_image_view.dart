import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  double width;
  double textSize;
  double height;
  Color backgroundColor;
  Color textColor;

  String imageData;

  CustomImageView({this.width, this.height, this.backgroundColor, this.textColor, this.imageData, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        width: width,
        height: height,
        color: backgroundColor,
        child: new Image.asset(
          imageData,
          width: width,
          height: height,
          fit: BoxFit.fitWidth,
        ),
      )),
    );
  }
}

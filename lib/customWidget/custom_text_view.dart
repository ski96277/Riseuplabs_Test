import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {


  double width;
  double textSize;
  double height;
  Color backgroundColor;
  Color textColor;

  String textData;
  TextAlign textAlign;
  double  padding;
  Function onPressed;
  FontWeight fontWeight;


  CustomTextView({this.width, this.height,this.backgroundColor,this.textColor,this.textData,this.textSize,this.textAlign,this.padding,this.onPressed,this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(width: width, height: height,color: backgroundColor, child: Text(textData,style: TextStyle(color: textColor,fontSize: textSize,fontWeight: fontWeight),textAlign: textAlign,)),
    );
  }
}

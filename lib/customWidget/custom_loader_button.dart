import 'package:flutter/material.dart';
import 'package:riseup_labs_test/customWidget/progress_indicator.dart';

class CustomProgressbarButton extends StatelessWidget {
  double width;
  double margin;
  double height;
  Function onPressed;
  String buttonText;
  Color backgroundColor;
  Color buttonTextColor;
  Color borderColor;

  CustomProgressbarButton(
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
          child: ProgressIndicatorImran(width: 20,height: 20,color: Colors.white,),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(backgroundColor), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: borderColor)))),
        ),
      ),
    );
  }
}


  /*Size size;
  double margin;
  double height;
  Function onPressed;
  String buttonText;
  Color primaryColor;

  CustomProgressbarButton(
      {this.size,
      this.margin,
      this.height,
      this.onPressed,
      this.buttonText,
      this.primaryColor});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin ?? 60.0),
      width: size.width,
      height: height ?? 40,
      child: ElevatedButton(
        onPressed: onPressed,
        //onPressed: () {Navigator.pushNamed(context, BottomNavScreenRoute);},
        child: ProgressIndicatorImran(width: 20,height: 20,color: Colors.white,),
        style: ElevatedButton.styleFrom(
          primary: primaryColor ?? Colors.red,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
*/
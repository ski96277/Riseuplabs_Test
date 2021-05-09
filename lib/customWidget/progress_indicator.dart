import 'package:flutter/material.dart';

class ProgressIndicatorImran extends StatelessWidget {


  double width;
  double height;
  Color color;


  ProgressIndicatorImran({this.width, this.height,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Container(width: width, height: height, child: CircularProgressIndicator(backgroundColor: color,))),
    );
  }
}

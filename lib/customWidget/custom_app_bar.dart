import 'package:flutter/material.dart';
import 'package:riseup_labs_test/utils/styles_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  String titleText;
  CustomAppBar({this.titleText, Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: whiteColor, //change your color here
      ),
      elevation: 0.0,
      title: Text(widget.titleText,style: TextStyle(color: whiteColor),),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [appThemeColor,appThemeColor],
          ),
        ),
      ),
    );
  }
}
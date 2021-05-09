import 'package:flutter/material.dart';
import 'package:riseup_labs_test/customWidget/custom_image_view.dart';
import 'package:riseup_labs_test/utils/styles_colors.dart';

class CustomButtonWithRightIcon extends StatelessWidget {
  double width;
  double margin;
  double height;
  Function onPressed;
  String buttonText;
  String iconImageData;
  Color buttonTextColor;
  Color primaryColor;

  CustomButtonWithRightIcon({this.width, this.margin, this.height, this.onPressed, this.buttonText, this.buttonTextColor, this.iconImageData, this.primaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin ?? 60.0),
      width: width ?? 40,
      height: height ?? 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                buttonText ?? "",
                textAlign: TextAlign.center,
                style: TextStyle(color: buttonTextColor),
              ),
            ),
            Container(
                child: CustomImageView(
              imageData: iconImageData,
            )),
          ],
        ),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(whiteColor), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.white)))),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riseup_labs_test/customWidget/custom_image_view.dart';
import 'package:riseup_labs_test/customWidget/custom_text_view.dart';
import 'package:riseup_labs_test/router/routing_constants.dart';
import 'package:riseup_labs_test/utils/const_%20text_file.dart';
import 'package:riseup_labs_test/utils/const_image_file.dart';
import 'package:riseup_labs_test/utils/styles_colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, AuthTabScreenRoute));

    return Scaffold(
      backgroundColor: appThemeColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CustomTextView(textData: logoTextData,textSize: 30,textColor: whiteColor,textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

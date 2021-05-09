import 'package:flutter/material.dart';

import 'package:riseup_labs_test/router/routing_constants.dart';

import 'package:riseup_labs_test/router/router.dart' as router;
import 'package:riseup_labs_test/utils/styles_colors.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: IntroScreenRoute,
      theme: ThemeData(
          primaryColor: appThemeColor
      ),
    );
  }
}

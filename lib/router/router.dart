import 'package:flutter/material.dart';
import 'package:riseup_labs_test/router/routeErrorPage/error_page.dart';
import 'package:riseup_labs_test/router/routing_constants.dart';
import 'package:riseup_labs_test/view/home/home_tab_screen.dart';
import 'package:riseup_labs_test/view/splash_screen_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {
    case IntroScreenRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case AuthTabScreenRoute:
      return MaterialPageRoute(builder: (context) => HomeTabScreen());

    default:
      return MaterialPageRoute(builder: (context) => ErrorPage());
  }
}

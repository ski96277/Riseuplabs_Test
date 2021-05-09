import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riseup_labs_test/controllar/cricket/cricket_controller.dart';
import 'package:riseup_labs_test/controllar/footbal/footbal_controller.dart';
import 'package:riseup_labs_test/customWidget/custom_text_view.dart';
import 'package:riseup_labs_test/utils/const_%20text_file.dart';
import 'package:riseup_labs_test/utils/styles_colors.dart';
import 'package:riseup_labs_test/view/home/cricket_screen.dart';
import 'package:riseup_labs_test/view/home/football_screen.dart';

class HomeTabScreen extends StatelessWidget {
  var controllerFootball = Get.put(FootballController());
  var controllerCricket = Get.put(CricketController());

  @override
  Widget build(BuildContext context) {
    controllerCricket.getCricketModelResponse();
    controllerFootball.getFootballModelResponse();

    TabBar get_tabBar = TabBar(
      indicatorColor: Colors.orange,
      unselectedLabelStyle: TextStyle(color: whiteColor),
      tabs: [
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sports_cricket,
                color: appThemeColor,
              ),
              CustomTextView(
                textData: "Cricket",
                textColor: appThemeColor,
              ),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sports_football,
                color: appThemeColor,
              ),
              CustomTextView(
                textData: "Football",
                textColor: appThemeColor,
              ),
            ],
          ),
        ),
      ],
    );

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: appThemeColor,
            title: Center(
              child: Text(
                appBarText,
                style: TextStyle(color: whiteColor),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: get_tabBar.preferredSize,
              child: ColoredBox(
                color: tabColor,
                child: get_tabBar,
              ),
            )
            /*TabBar(

            labelColor: tabColor,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: appThemeColor,

            tabs: [
              Tab(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sports_cricket,color:appThemeColor,),
                  CustomTextView(textData: "Cricket",textColor: appThemeColor,),
                ],
              ),),
              Tab(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sports_football,color: appThemeColor,),
                  CustomTextView(textData: "Football",textColor: appThemeColor,),
                ],
              ),),
            ],
          ),*/
            ),
        body: TabBarView(
          children: [CricketScreen(), FootballScreen()],
        ),
      ),
    );
  }
}

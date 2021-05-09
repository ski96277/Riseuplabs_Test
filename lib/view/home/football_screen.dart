import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riseup_labs_test/controllar/footbal/footbal_controller.dart';
import 'package:riseup_labs_test/customWidget/custom_text_view.dart';
import 'package:riseup_labs_test/customWidget/progress_indicator.dart';
import 'package:riseup_labs_test/utils/const_image_file.dart';
import 'package:riseup_labs_test/utils/list_tem.dart';
import 'package:riseup_labs_test/utils/styles_colors.dart';
import 'package:riseup_labs_test/utils/time_diffrence.dart';

class FootballScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: GetX<FootballController>(builder: (footballController) {
        return footballController.progressbarShow.value
            ? ProgressIndicatorImran()
            : SingleChildScrollView(
              child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Center(child: Image.asset(footballImage,width: MediaQuery.of(context).size.width,)),
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: footballController.footballModelClass.value.matches.length,
                          itemBuilder: (context, index) {
                            return ListItem(footballController.footballModelClass.value.matches[index].shortName + " " + footballController.footballModelClass.value.matches[index].startDate.substring(0, 4),footballController.footballModelClass.value.matches[index].teamA.jersey, footballController.footballModelClass.value.matches[index].teamA.shortName, TimeDiffrence(footballController.footballModelClass.value.matches[index].startDate.substring(0, 10)), footballController.footballModelClass.value.matches[index].teamB.shortName, footballController.footballModelClass.value.matches[index].teamB.jersey,Icon(Icons.sports_football,color: Colors.white,));

                          })
                    ],
                  ),
                ),
            );
      }),
    );
  }
}

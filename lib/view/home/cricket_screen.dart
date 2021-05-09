import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riseup_labs_test/controllar/cricket/cricket_controller.dart';
import 'package:riseup_labs_test/customWidget/progress_indicator.dart';
import 'package:riseup_labs_test/utils/const_image_file.dart';
import 'package:riseup_labs_test/utils/list_tem.dart';
import 'package:riseup_labs_test/utils/styles_colors.dart';
import 'package:riseup_labs_test/utils/time_diffrence.dart';

class CricketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: GetX<CricketController>(builder: (cricketController) {
        return cricketController.progressbarShow.value
            ? ProgressIndicatorImran()
            : SingleChildScrollView(

              child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Center(child: Image.asset(cricketImage,width: MediaQuery.of(context).size.width,)),
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: cricketController.cricketModelClass.value.matches.length,
                          itemBuilder: (context, index) {
                            return ListItem(cricketController.cricketModelClass.value.matches[index].shortName + " " + cricketController.cricketModelClass.value.matches[index].startDate.substring(0, 4), cricketController.cricketModelClass.value.matches[index].teamA.jersey, cricketController.cricketModelClass.value.matches[index].teamA.shortName, TimeDiffrence(cricketController.cricketModelClass.value.matches[index].startDate.substring(0, 10)), cricketController.cricketModelClass.value.matches[index].teamB.shortName, cricketController.cricketModelClass.value.matches[index].teamB.jersey,Icon(Icons.sports_cricket,color: Colors.white,));
                          })
                    ],
                  ),
                ),
            );
      }),
    );
  }
}

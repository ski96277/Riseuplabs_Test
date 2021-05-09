import 'package:flutter/material.dart';
import 'package:riseup_labs_test/customWidget/custom_text_view.dart';
import 'package:riseup_labs_test/utils/styles_colors.dart';

class ListItem extends StatelessWidget {
  String s;
  String jerseyA;
  String shortNameTeamA;
  String timeDiffrence;
  String shortNameTeamB;
  String jerseyB;

  ListItem(this.s, this.jerseyA, this.shortNameTeamA, this.timeDiffrence, this.shortNameTeamB, this.jerseyB);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 100,
        color: tabColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextView(
                textData: s,
                textColor: appThemeColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          jerseyA,
                          height: 20,
                          width: 20,
                          errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
                            return Icon(
                              Icons.sports_cricket,
                              color: whiteColor,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: CustomTextView(
                          textData: shortNameTeamA,
                          textColor: appThemeColor,
                          fontWeight: FontWeight.bold,
                          textSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: CustomTextView(textData: timeDiffrence + " Days Left", textColor: whiteColor, fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        child: CustomTextView(
                          textData: shortNameTeamB,
                          textColor: appThemeColor,
                          fontWeight: FontWeight.bold,
                          textSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          jerseyB,
                          height: 20,
                          width: 20,
                          errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
                            return Icon(
                              Icons.sports_cricket,
                              color: whiteColor,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

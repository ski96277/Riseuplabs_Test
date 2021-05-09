import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:riseup_labs_test/model/football_model.dart';
import 'package:riseup_labs_test/utils/const_api.dart';


class FootballController extends GetxController{
  var progressbarShow = false.obs;

  var footballModelClass = new FootballModelClass().obs;


  @override
  void onInit() {
    super.onInit();
    progressbarShow.value=false;
  }


  Future<void> getFootballModelResponse() async {
    progressbarShow.value = true;

    var footballResponse = await http.post(
      Uri.parse(footballMatchAPi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    debugPrint("football Response = ${footballResponse.body}");
    var dataMapDecode = jsonDecode(footballResponse.body);
    if (footballResponse.statusCode == 200) {
      progressbarShow.value = false;

      FootballModelClass footballModelClassObj = FootballModelClass.fromJson(dataMapDecode);
      footballModelClass.value=footballModelClassObj;

    } else {
      progressbarShow.value = false;

    }
  }
}

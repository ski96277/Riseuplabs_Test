import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riseup_labs_test/model/cricket_model.dart';
import 'package:http/http.dart' as http;
import 'package:riseup_labs_test/utils/const_api.dart';

class CricketController extends GetxController{
  var progressbarShow = false.obs;

  var cricketModelClass = new CricketModelClass().obs;


  @override
  void onInit() {
    super.onInit();
    progressbarShow.value=false;
  }


  Future<void> getCricketModelResponse() async {
    progressbarShow.value = true;

    var signInResponse = await http.post(
      Uri.parse(cricketMatchAPi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    debugPrint("cricket Response = ${signInResponse.body}");
    var dataMapDecode = jsonDecode(signInResponse.body);
    if (signInResponse.statusCode == 200) {
      progressbarShow.value = false;

      CricketModelClass cricketModelClassObj = CricketModelClass.fromJson(dataMapDecode);
      cricketModelClass.value=cricketModelClassObj;

    } else {
      progressbarShow.value = false;

    }
  }
}

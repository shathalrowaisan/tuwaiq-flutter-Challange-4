

import 'dart:developer';

import 'package:get/get.dart';
import 'package:shatha_challenge4/Model/quotes_data.dart';
import 'package:shatha_challenge4/Services/Api%20Network/services.dart';

class MyPageController extends GetxController {
  
  List quotesData =  ['press next to start'] ;

  NextQuote() async {
    var result = await ClassApi.GetData();

    if (result != []) {
      quotesData = [QuotesData.fromJson(json: result)];
    }

    log(result.toString());

    update();
  }
}
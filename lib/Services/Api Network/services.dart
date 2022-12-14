import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http ;

abstract class ClassApi {

  static GetData() async {
    
    try {

      var url = Uri.parse('https://api.api-ninjas.com/v1/quotes?category=happiness') ; // here the API url 

      var responseWithHeaders = await http.get(url , headers: {
      'X-Api-Key' : 'uuijyvzaBxTHtbv61WfZtw==TQIxnIMZfZpw89Yg', // my API required a key
      });

      var quote = jsonDecode(responseWithHeaders.body); // from string to map

      if (responseWithHeaders.statusCode == 200) { // if there is data
        return quote[0] ;
      } 
    
    } catch(error){

      log(error.toString());
      Get.snackbar('warning', error.toString());

    }

     return [] ; // if any type of error happens

  }

}
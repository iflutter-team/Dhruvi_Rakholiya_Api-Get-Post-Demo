import 'dart:io';

import 'package:get/get.dart';

class InternetConnection{
  static Future<bool> checkUserConnection() async {
    bool activeConnection = false;
    try{
      final result = await InternetAddress.lookup('google.com');
      if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
        activeConnection = true;
      }
    }on SocketException catch(error){
      activeConnection = true;
      Get.snackbar("Connection Error!!", "Turn On Internet Connection");
    }
    return activeConnection;
  }
}
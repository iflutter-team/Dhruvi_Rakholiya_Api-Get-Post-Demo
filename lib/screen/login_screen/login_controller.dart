import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/model/model_users.dart';
import 'package:sitafal/screen/home_screen/home_screen.dart';
import 'package:sitafal/screen/signup_screen/signup_screen.dart';
import 'package:sitafal/services/firebase_services.dart';
import 'package:sitafal/services/pref_services.dart';
//import 'package:sitafal/services/pref_services.dart';
import 'package:sitafal/utils/firebase_res.dart';
import 'package:sitafal/utils/pref_Res.dart';
//import 'package:sitafal/utils/pref_Res.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void loginOnTap() {

    String userString = PrefServices.getString(PrefRes.userKey);
    if (userString == '') {
      Get.snackbar('Login failed', "plz sign Up");
    } else {
      List<User> userList = userFromJson(userString);
      bool value = userList.any((element) =>
          element.email == emailController.text &&
          element.password == passController.text);
      if (value) {
        PrefServices.setValue(PrefRes.isLogin, true);
        int index = userList.indexWhere((element) =>
            element.email == emailController.text &&
            element.password == passController.text);
        User loggedUser = userList[index];
        PrefServices.setValue(PrefRes.loggedUser, json.encode(loggedUser.toJson()));
        userList.remove(loggedUser);
        Get.off(const Home());
      } else {
        Get.snackbar('Login failed', "plz Enter valid UserName");
      }
    }

  }


  // Future<void> checkData() async {
  //   Map? allData = await FrbServices.getAllData(FirebaseRes.addData);
  //   List<User>? userList;
  //   List<Map> userJsonList = [];
  //   if (allData != null) {
  //     allData.forEach((key, value) {
  //       Map userData = {};
  //       userData["id"] = key;
  //       value.forEach((key1,value1){
  //         userData[key1.toString()] = value1;
  //       });
  //      // print(userData);
  //       userList!.add(User.fromJson(userData));
  //       userJsonList.add(userData);
  //     });
  //   //  print(userJsonList);
  //     userList = userFromJson(jsonEncode(userJsonList));
  //     //print(userList![0].email);
  //     bool value = userList.any((element) =>
  //     element.email == emailController.text && element.password == passController.text);
  //     if (value) {
  //       int index = userList.indexWhere((element) =>
  //       element.email == emailController.text && element.password == passController.text);
  //       User loggedUser = userList[index];
  //       // String loggedUser = userToJson(loggedUser);
  //       Get.off(() => const Home());
  //     } else {
  //       Get.snackbar('Login Failed!!!', 'Please Enter Valid Data');
  //     }
  //   }
  // }


  void signOnTap() {
    Get.to(const Signup());
  }
}

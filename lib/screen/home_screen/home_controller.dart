import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sitafal/model/model_users.dart';
import 'package:sitafal/model/product_model.dart';
import 'package:sitafal/screen/home_screen/home_api.dart';
import 'package:sitafal/screen/login_screen/login_screen.dart';
// import 'package:sitafal/services/firebase_services.dart';
import 'package:sitafal/services/pref_services.dart';
// import 'package:sitafal/utils/firebase_res.dart';
import 'package:sitafal/utils/pref_Res.dart';

class HomeScreenController extends GetxController{

  TextEditingController email =TextEditingController();
  TextEditingController pass =TextEditingController();

  FirebaseDatabase database = FirebaseDatabase.instance;

  void insertData(){
    DatabaseReference ref = database.ref("User").child("Dhruvi");
    String? key = ref.push().key;
    ref.child(key!).set({
      "email":email.text,
      "pass":pass.text,
    }).whenComplete(() {
      email.clear();
      pass.clear();
    });
  }


  void upDate(){
    DatabaseReference ref = database.ref("User").child("Dhruvi");
    ref.update({
      "email":email.text,
      "pass":pass.text,
    }).whenComplete(() {
      email.clear();
      pass.clear();
    });
  }


  void delete(){
    DatabaseReference ref = database.ref("User").child("Dhruvi");
    ref.remove();
  }

  List<Map>  userList = [];

  void select(){
    DatabaseReference ref = database.ref("User").child("Dhruvi");
    ref.get().then((value) {
      Map data = value.value as Map;
      data.forEach((key, value) {
        // print(key);
        // print(value);
        value.forEach((key,value){
          // print(key);
          // print(value);
          userList.add(value);
        });
      });
    });
    // ref.once().then((value) {
    //   Map Data = value.snapshot.value as Map;
    //   Data.forEach((key, value) {
    //     print(key);
    //     print(value);
    //   });
    // });
  }
  User? loginUser;
  List<User>? allUser;
  ProductModel? imageList;
@override
  void onInit() {
    // TODO+
  //  .......: implement onInit
    getImageList();
  //   loginUserData();
  //    allData();
    super.onInit();
  }
  Future<void> getImageList() async {
    imageList = await HomeScreenApi.getData();
    update(["userList"]);
  }
  void loginUserData(){
     String loginUserString = PrefServices.getString(PrefRes.loggedUser);
    loginUser = User.fromJson(json.decode(loginUserString));
    update(["loginData"]);
  }

  void allData(){
  String allUserData = PrefServices.getString(PrefRes.userKey);
  allUser = userFromJson(allUserData);
  update(["allData"]);
  }


  void logOut(){
  PrefServices.logOut(PrefRes.loggedUser);
  Get.offAll(()=> const Login());
  update(["logOut"]);
  }
}
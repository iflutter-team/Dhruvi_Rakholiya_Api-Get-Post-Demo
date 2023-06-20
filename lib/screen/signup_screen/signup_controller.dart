import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/model/model_users.dart';
import 'package:sitafal/model/signup_model.dart';
import 'package:sitafal/screen/login_screen/login_screen.dart';
import 'package:sitafal/screen/signup_screen/signup_api.dart';
import 'package:sitafal/services/firebase_services.dart';
// import 'package:sitafal/services/firebase_services.dart';
import 'package:sitafal/services/pref_services.dart';
import 'package:sitafal/utils/firebase_res.dart';
// import 'package:sitafal/utils/firebase_res.dart';
import 'package:sitafal/utils/pref_Res.dart';

class SignupController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  SignUpModel? getPostData;
  
  void signUpOnTap(){
    Map<String, dynamic> user={
      "name":nameController.text,
      "mobile":lastController.text,
      "email":emailController.text,
      "password":passController.text,
    };
    User userdata = User.fromJson(user);
   String userString = PrefServices.getString(PrefRes.userKey);
   List<User> userList = [];
    if(userString ==''){
      userList.add(userdata);
    }
    else{
      userList=userFromJson(userString);
      userList.add(userdata);
    }
    //print(userList);
    userString = userToJson(userList);
    PrefServices.setValue(PrefRes.userKey, userString);
   // print(userList.toString());
    Get.back();
  }


  Future userSignUp() async {

    Map<String ,dynamic> body = {
      "FirstName" :nameController.text.trim(),
      "EmailId" : emailController.text.trim(),
      "LastName" : lastController.text.trim(),
      "Password" : passController.text.trim(),
    };

    getPostData= await SingUpApi.registerUser(body: body);

    if(getPostData !=null && getPostData!.status == 1){
    Get.off(const Login());
    }

  }


  // Future<void> addData() async {
  //   Map user = {
  //     "name" : nameController.text,
  //     "email" : emailController.text,
  //     "mobile" : numberController.text,
  //     "password" : passController.text
  //   };
  //   User userData = User.fromJson(user);
  //   bool isAddData =  await FrbServices.addData(FirebaseRes.addData, userData.toJson());
  //   if(isAddData){
  //     Get.back();
  //   }else{
  //     Get.snackbar("SignUp Error!!", "Please Check Again");
  //   }
  // }


  void loginOnTap(){
    Get.back();
  }
}
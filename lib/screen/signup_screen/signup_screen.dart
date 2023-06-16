import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/screen/signup_screen/signup_controller.dart';
import 'package:sitafal/screen/signup_screen/signup_widget.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Sign Up ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            nameTextFiled(),
            const SizedBox(height: 15,),
            phoneTextFiled(),
            const SizedBox(height: 15,),
            emailTextFiled(),
            const SizedBox(height: 15,),
            passTextFiled(),
            const SizedBox(height: 15,),
            signUpBtn(),
            const SizedBox(height: 15,),
            loginTxt(),
          ],
        ),
      ),
    );
  }
}

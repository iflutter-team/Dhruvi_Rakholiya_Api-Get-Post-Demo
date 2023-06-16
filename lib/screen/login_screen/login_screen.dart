import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/screen/login_screen/login_controller.dart';
import 'package:sitafal/screen/login_screen/login_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            emailTextFiled(),
            const SizedBox(height: 15,),
            passTextFiled(),
            const SizedBox(height: 15,),
            loginBtn(),
            const SizedBox(height: 15,),
            signUpTxt(),
          ],
        ),
      ),
    );
  }
}

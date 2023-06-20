
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/common_widget/textfiled.dart';
import 'package:sitafal/screen/login_screen/login_controller.dart';
import 'package:sitafal/utils/string_res.dart';

Widget emailTextFiled() {
  return GetBuilder<LoginController>(
    builder: (controller) {
      return SizedBox(
        width: 300,
        child: textFormField(
          readOnly: false,
          obscure: false,
          controller: controller.emailController,
          txtAlign: TextAlign.start,
          hint: StringRes.emailHintTxt,
          //fillColor: ColorRes.txtFieldColor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      );
    }
  );
}

Widget passTextFiled() {
  return GetBuilder<LoginController>(
    builder: (controller) {
      return SizedBox(
        width: 300,
        child: textFormField(
          readOnly: false,
          obscure: false,
          controller: controller.passController,
          txtAlign: TextAlign.start,
          hint: StringRes.passHintTxt,
         // fillColor: ColorRes.txtFieldColor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      );
    }
  );
}

Widget loginBtn() {
  return GetBuilder<LoginController>(builder: (controller) {
    return ElevatedButton(
        onPressed:()=> controller.userLogin(),
        child: const Text(
          StringRes.loginBtnTxt,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ));
  });
}

Widget signUpTxt(){
  return GetBuilder<LoginController>(builder: (controller){
    return TextButton(onPressed: controller.signOnTap, child: const Text(StringRes.signUpBtnTxt));
  });
}

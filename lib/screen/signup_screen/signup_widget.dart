import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/common_widget/textfiled.dart';
import 'package:sitafal/screen/signup_screen/signup_controller.dart';
import 'package:sitafal/utils/string_res.dart';

Widget nameTextFiled() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return SizedBox(
        width: 300,
        child: textFormField(
          readOnly: false,
          obscure: false,
          controller: controller.nameController,
          txtAlign: TextAlign.start,
          hint: StringRes.nameHintTxt,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      );
    }
  );
}

Widget phoneTextFiled() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return SizedBox(
        width: 300,
        child: textFormField(
          readOnly: false,
          obscure: false,
          controller: controller.emailController,
          txtAlign: TextAlign.start,
          hint: StringRes.phoneHintTxt,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      );
    }
  );
}

Widget emailTextFiled() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return SizedBox(
        width: 300,
        child: textFormField(
          readOnly: false,
          obscure: false,
          controller: controller.lastController,
          txtAlign: TextAlign.start,
          hint: StringRes.signupEmailHintTxt,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      );
    }
  );
}

Widget passTextFiled() {
  return GetBuilder<SignupController>(
    builder: (controller) {
      return SizedBox(
        width: 300,
        child: textFormField(
          readOnly: false,
          obscure: false,
          controller: controller.passController,
          txtAlign: TextAlign.start,
          hint: StringRes.signupPassHintTxt,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      );
    }
  );
}

Widget signUpBtn() {
  return GetBuilder<SignupController>(builder: (controller) {
    return ElevatedButton(
        onPressed: ()=> controller.userSignUp(),
        child: const Text(
          StringRes.signupBtnTxt,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
  });
}

Widget loginTxt() {
  return GetBuilder<SignupController>(builder: (controller) {
    return TextButton(
        onPressed: controller.loginOnTap, child: Text(StringRes.signupLoginBtnTxt));
  });
}

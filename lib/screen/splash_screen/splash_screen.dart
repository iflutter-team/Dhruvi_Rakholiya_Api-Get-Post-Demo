import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/screen/home_screen/home_screen.dart';
import 'package:sitafal/screen/login_screen/login_screen.dart';
import 'package:sitafal/services/pref_services.dart';
import 'package:sitafal/utils/pref_Res.dart';
import 'package:sitafal/utils/string_res.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bool isLogin =  PrefServices.getBool(PrefRes.isLogin);
    Timer(const Duration(seconds: 3), () {
      Get.to(isLogin ?const Home():const Login());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              StringRes.splashTxt,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Icon(
              Icons.account_circle,size: 30,
            )
          ],
        ),
      ),
    );
  }
}

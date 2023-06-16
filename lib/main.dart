
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/screen/home_screen/home_screen.dart';
import 'package:sitafal/screen/login_screen/login_screen.dart';
import 'package:sitafal/screen/splash_screen/splash_screen.dart';
import 'package:sitafal/services/pref_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefServices.init();
  await Firebase.initializeApp();
  runApp(
     GetMaterialApp(
       debugShowCheckedModeBanner: false,
       home: Splash(),
    )
  );
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/screen/home_screen/home_controller.dart';
// import 'package:sitafal/screen/home_screen/home_controller.dart';
import 'package:sitafal/screen/home_screen/home_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          row(),
          SizedBox(height: 30,),
          container(),
          SizedBox(height: 30,),
           listView(),
          // row2(),
        ],
      ),
    );
  }
}

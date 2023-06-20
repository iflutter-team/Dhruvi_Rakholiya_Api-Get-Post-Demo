// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sitafal/screen/home_screen/home_controller.dart';
// // import 'package:sitafal/screen/home_screen/home_controller.dart';
// import 'package:sitafal/screen/home_screen/home_widget.dart';
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(HomeController());
//     return  Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 30,),
//           row(),
//           SizedBox(height: 30,),
//           container(),
//           SizedBox(height: 30,),
//            listView(),
//           // row2(),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sitafal/screen/home_screen/home_controller.dart';
import 'package:sitafal/utils/color_res.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("API"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<HomeScreenController>(
            id: "userList",
            builder: (controller) {
              return controller.imageList == null
                  ? const Center(child: CircularProgressIndicator())
                  : GridView.builder(
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: controller.imageList!.products!.length,
                itemBuilder: (context, index) => Card(
                  shadowColor: ColorRes.shadowColor,
                  elevation: 5,
                  child: Column(
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            controller.imageList!.products![index]!
                                .images!.first,
                            fit: BoxFit.fitWidth,
                            height: 100,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text(
                                controller
                                    .imageList!.products![index]!.title
                                    .toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.0061,
                      ),
                      Row(
                        children: [
                          Text(
                            '  \$' +
                                controller
                                    .imageList!.products![index]!.price
                                    .toString(),
                            style: TextStyle(
                                color: ColorRes.txtColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.star,color: ColorRes.txtColor,size: 13,),
                          Text( controller
                              .imageList!.products![index]!.rating
                              .toString(),)

                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.add),),
    );
  }
}


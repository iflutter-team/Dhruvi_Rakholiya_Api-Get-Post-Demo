// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sitafal/common_widget/textfiled.dart';
// import 'package:sitafal/screen/home_screen/home_controller.dart';
// import 'package:sitafal/utils/color_res.dart';
//
// Widget row() {
//   return GetBuilder<HomeController>(
//       id: 'logOut',
//       builder: (controller) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 5.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text(
//                 "Detail",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//               const Spacer(),
//               IconButton(
//                   onPressed: controller.logOut,
//                   icon: const Icon(
//                     Icons.exit_to_app,
//                     size: 30,
//                   ))
//             ],
//           ),
//         );
//       });
// }
//
// Widget container() {
//   return GetBuilder<HomeController>(builder: (controller) {
//     return Container(
//       height: 180,
//       width: 350,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: ColorRes.conColor,
//       ),
//       child: Row(
//         children: [
//           const SizedBox(
//             width: 5,
//           ),
//           const CircleAvatar(
//             radius: 50,
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //   crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Email: ${controller.loginUser?.email ?? ''}",
//                 style: const TextStyle(fontSize: 20),
//               ),
//               // SizedBox(
//               //   height: 15,
//               // ),
//               Text(
//                 "Password: ${controller.loginUser?.password ?? ''}",
//                 style: const TextStyle(fontSize: 20),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   });
// }
//
// Widget listView() {
//   return Expanded(
//     child: GetBuilder<HomeController>(
//         id: 'allData',
//         builder: (controller) {
//           return ListView.builder(
//             itemCount: controller.allUser?.length ?? 0,
//             itemBuilder: (context, index) => ListTile(
//               leading: Text(controller.allUser?[index].name ?? ''),
//               title: Text(controller.allUser?[index].email ?? ''),
//               subtitle: Text(controller.allUser?[index].mobile ?? ''),
//             ),
//           );
//         }),
//   );
// }
//
// Widget row2() {
//   return Column(
//     children: [
//       GetBuilder<HomeController>(
//         builder: (controller) {
//           return SizedBox(
//             width: 300,
//             child: textFormField(
//               controller: controller.email,
//                 readOnly: false, txtAlign: TextAlign.center, obscure: false),
//           );
//         }
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       GetBuilder<HomeController>(
//         builder: (controller) {
//           return SizedBox(
//             width: 300,
//             child: textFormField(
//               controller: controller.pass,
//                 readOnly: false, txtAlign: TextAlign.center, obscure: false),
//           );
//         }
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       GetBuilder<HomeController>(
//         builder: (controller) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(onPressed: controller.insertData, child: Text("Insert")),
//               ElevatedButton(onPressed: controller.upDate, child: Text("Update")),
//               ElevatedButton(onPressed: controller.delete, child: Text("Delete")),
//               ElevatedButton(onPressed: controller.select, child: Text("Select")),
//             ],
//           );
//         }
//       )
//     ],
//   );
// }

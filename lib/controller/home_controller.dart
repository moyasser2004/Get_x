// // import 'package:get/get.dart';
// //
// //
// // class CounterController extends GetxController{
// //
// //   RxInt counter1 =0.obs;
// //   RxInt counter2 =0.obs;
// //
// //   void increment1(){
// //     counter1++;
// //   }
// //
// //   void decrement1(){
// //     counter1--;
// //   }
// //
// //   void increment2(){
// //     counter2++;
// //   }
// //
// //   void decrement2(){
// //     counter2--;
// //   }
// //
// //   int get sumCounter => counter1.value + counter2.value;
// //
// // }
// //
// //
// //
// // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import '../controller/home_controller.dart';
// //
// //
// // class StateManagement extends StatelessWidget {
// //   StateManagement({super.key});
// //
// //   final  CounterController controller = Get.put(CounterController());
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(),
// //         body:Column(
// //           children: [
// //             GetX<CounterController>(
// //               init: CounterController(),
// //               builder: (controller){
// //                 print("build1");
// //                 return Center(
// //                   child: Text("${controller.counter1.value}"),
// //                 );
// //               },
// //             ),
// //             GetX<CounterController>(
// //               builder: (controller){
// //                 print("build2");
// //                 return Center(
// //                   child: Text("${controller.counter2.value}"),
// //                 );
// //               },
// //             ),
// //             GetX<CounterController>(
// //               builder: (controller){
// //                 print("build3");
// //                 return Center(
// //                   child: Text("${controller.sumCounter}"),
// //                 );
// //               },
// //             ),
// //             const SizedBox(height: 100,),
// //             Center(
// //               child: MaterialButton(
// //                 onPressed: (){
// //                   controller.increment1();
// //                 },
// //                 child: const Text("Counter One +"),
// //               ),
// //             ),
// //             Center(
// //               child: MaterialButton(
// //                 onPressed: (){
// //                   controller.decrement1();
// //                 },
// //                 child: const Text("Counter One -"),
// //               ),
// //             ),
// //             Center(
// //               child: MaterialButton(
// //                 onPressed: (){
// //                   controller.increment2();
// //                 },
// //                 child: const Text("Counter two +"),
// //               ),
// //             ),
// //             Center(
// //               child: MaterialButton(
// //                 onPressed: (){
// //                   controller.decrement2();
// //                 },
// //                 child: const Text("Counter two -"),
// //               ),
// //             ),
// //
// //           ],
// //         )
// //     );
// //   }
// //
// // }
//
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//
// /////////////////////////////////////////////////
// //using GetBuilder
//
// class CounterController extends GetxController{
//
//   int counter1 =0;
//   int counter2 =0;
//
//   void increment1(){
//     counter1++;
//     update();
//   }
//
//   void decrement1(){
//     counter1--;
//     update();
//   }
//
//   void increment2(){
//     counter2++;
//     update();
//   }
//
//   void decrement2(){
//     counter2--;
//     update();
//   }
//
//   int get sumCounter => counter1 + counter2;
//
// }
//
//
// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
// // import 'package:get/get.dart';
// // import 'package:get/get.dart';
// //
// // import '../controller/home_controller.dart';
//
// class StateManagement extends StatelessWidget {
//   const StateManagement({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: Column(
//           children: [
//             GetBuilder<CounterController>(
//               init: CounterController(),
//               builder: (controller) {
//                 print("build1");
//                 return Center(
//                   child: Text("${controller.counter1}"),
//                 );
//               },
//             ),
//             GetBuilder<CounterController>(
//               builder: (controller) {
//                 print("build2");
//                 return Center(
//                   child: Text("${controller.counter2}"),
//                 );
//               },
//             ),
//             GetBuilder<CounterController>(
//               builder: (controller) {
//                 print("build3");
//                 return Center(
//                   child: Text("${controller.sumCounter}"),
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 100,
//             ),
//             GetBuilder<CounterController>(
//               builder: (controller) {
//                 print("build3");
//                 return Center(
//                   child: MaterialButton(
//                     onPressed: () {
//                       controller.increment1();
//                     },
//                     child: const Text("Counter One +"),
//                   ),
//                 );
//               },
//             ),
//             GetBuilder<CounterController>(
//               builder: (controller) {
//                 print("build3");
//                 return Center(
//                   child: MaterialButton(
//                     onPressed: () {
//                       controller.decrement1();
//                     },
//                     child: const Text("Counter One -"),
//                   ),
//                 );
//               },
//             ),
//             GetBuilder<CounterController>(
//               builder: (controller) {
//                 print("build3");
//                 return Center(
//                   child: MaterialButton(
//                     onPressed: () {
//                       controller.increment2();
//                     },
//                     child: const Text("Counter two +"),
//                   ),
//                 );
//               },
//             ),
//             GetBuilder<CounterController>(
//               builder: (controller) {
//                 print("build3");
//                 return Center(
//                   child: MaterialButton(
//                     onPressed: () {
//                       controller.decrement2();
//                     },
//                     child: const Text("Counter two -"),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pageone.dart';
import '../PageTwo.dart';
import '../appBinding.dart';
import '../controller/home_controller.dart';
import '../loacl/local_controler.dart';
import '../servcies/services.dart';



class StateManagement extends StatelessWidget{
      StateManagement({super.key});

   final LocalController c=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title: Text("3".tr),
   ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              onPressed: (){
                c.changeLang("ar");
              },
              child:  Text("1".tr),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                c.changeLang("en");
              },
              child:  Text("2".tr),
            ),
          ),

        ],
      ),
    ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx/pageone.dart';
// import '../PageTwo.dart';
// import '../appBinding.dart';
// import '../controller/home_controller.dart';
// import '../servcies/services.dart';
//
//
//
// class StateManagement extends GetView<ServiceController> {
//   const StateManagement({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetX<ServiceController>(
//               builder: (c)=>Center(
//                 child: Text("${c.counter}"),
//               ),
//             ),
//             Center(
//               child: MaterialButton(
//                 onPressed: (){
//                   controller.increment();
//                 },
//                 child: const Text("++"),
//               ),
//             ),
//             Center(
//               child: MaterialButton(
//                 onPressed: (){
//                   controller.delete() ;
//                 },
//                 child: const Text("delete"),
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//
// }






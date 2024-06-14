import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class PageOne extends StatelessWidget {
   PageOne({Key? key}) : super(key: key);

   final  CounterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: (){
              controller.increment1();
            },
          ),
          GetBuilder<CounterController>(
            init:CounterController() ,
            builder: (controller)=> Text("${controller.counter1}"),
          ),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: (){
              controller.decrement1();
            },
          ),
        ],
      ),
    );
  }
}

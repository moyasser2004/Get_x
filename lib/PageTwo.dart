import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class PageTwo extends StatelessWidget {
  PageTwo({Key? key}) : super(key: key);

 final  CounterController c=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("${c.counter1}"),
      )
    );
  }
}

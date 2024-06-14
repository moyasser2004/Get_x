import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/loacl/loacl_translation.dart';
import 'package:getx/servcies/services.dart';
import 'package:getx/view/StateMangment.dart';

import 'loacl/local_controler.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  await LocalController.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalController controller =Get.put(LocalController());
    return GetMaterialApp(
      //initialBinding: AppBinding(),
      locale: controller.initLang,
      translations: AppLocal(),
      home:  StateManagement(),
    );
  }
}

import 'package:get/get.dart';
import 'controller/home_controller.dart';



class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>CounterController(),fenix: true);
  }
}
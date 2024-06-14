import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceController extends GetxService {
  late SharedPreferences sharePreferences;
  RxInt counter = 0.obs;

  Future<ServiceController> init() async {
    sharePreferences = await SharedPreferences.getInstance();
    counter.value = sharePreferences.getInt("counter") ?? 0;
    return this;
  }

  void increment() {
    counter.value++;
    sharePreferences.setInt("counter", counter.value);
  }

  void delete() async {
    sharePreferences.remove("counter");
    await init();
  }
}

Future initServices() async {
  await Get.putAsync(() => ServiceController().init(), permanent: true);
}

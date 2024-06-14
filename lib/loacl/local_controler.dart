import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LocalController extends GetxController{

  static late SharedPreferences sharePreferences;

  static Future<void> init()async{
    sharePreferences=await SharedPreferences.getInstance();
  }

  Locale initLang= sharePreferences.getString("lang")=="ar"?const Locale("ar"):const Locale("en");

  void changeLang(String lang)async{
    Locale locale=Locale(lang);
    await sharePreferences.setString("lang",lang);
    Get.updateLocale(locale);
  }

}
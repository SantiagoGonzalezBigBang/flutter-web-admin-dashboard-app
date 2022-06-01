import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {

  static late SharedPreferences sharedPreferences;

  static Future<void> configureSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

}
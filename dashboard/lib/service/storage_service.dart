

import 'package:shared_preferences/shared_preferences.dart';

class StorageService {

  static late SharedPreferences prefs;

  static Future<void> configurePrefs() async {
      prefs = await SharedPreferences.getInstance();
      
  }



}


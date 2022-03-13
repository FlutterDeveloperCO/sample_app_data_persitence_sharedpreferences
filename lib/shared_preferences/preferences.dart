

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static late SharedPreferences _prefs;

  static String _name = '';
  static String _email = '';
  static int _gender = 1;
  static bool _isDarkmode = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }



}
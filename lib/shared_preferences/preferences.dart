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

  //Setters and Getters of User Preferences

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }

  static String get email {
    return _prefs.getString('email') ?? _email;
  }

  static set email(String email) {
    _email = email;
    _prefs.setString('email', email);
  }

  static bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkmode;
  }

  static set isDarkMode(bool isDarkMode) {
    _isDarkmode = isDarkMode;
    _prefs.setBool('isDarkMode', isDarkMode);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt('gender', gender);
  }
}

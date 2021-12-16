import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  // General Methods: ----------------------------------------------------------
  static Future<String?> get authToken async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.authToken);
  }

  static Future<bool> saveAuthToken(String authToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.authToken, authToken);
  }

  static Future<bool> removeAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(Preferences.authToken);
  }

  // Login:---------------------------------------------------------------------
  static Future<bool> get isLoggedIn async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Preferences.isLoggedIn) ?? false;
  }

  static Future<bool> saveIsLoggedIn(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(Preferences.isLoggedIn, value);
  }

  // Full Name :---------------------------------------------------------------------
  static Future<String?> get fullName async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.fullName);
  }

  static Future<bool> saveFullName(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.fullName, value);
  }


   // User ID :---------------------------------------------------------------------
  static Future<String?> get userId async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.userId);
  }

  static Future<bool> saveUserId(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.userId, value);
  }


  // Country Code :---------------------------------------------------------------------
  static Future<String?> get phoneCode async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.phoneCode);
  }

  static Future<bool> savePhoneCode(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.phoneCode, value);
  }

  // PAssword :---------------------------------------------------------------------
  static Future<String?> get password async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.phoneCode);
  }

  static Future<bool> savePassword(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.password, value);
  }

  //Signup user id

  static Future<String?> get signupUserId async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.signupUserId);
  }

  static Future<bool> savesignupUserId(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.signupUserId, value);
  }

  // Mobile Number :---------------------------------------------------------------------
  static Future<String?> get mobileNumber async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.mobileNumber);
  }

  static Future<bool> saveMobileNumber(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.mobileNumber, value);
  }

  // Email :---------------------------------------------------------------------
  static Future<String?> get email async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Preferences.email);
  }

  static Future<bool> saveEmail(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(Preferences.email, value);
  }

  
}

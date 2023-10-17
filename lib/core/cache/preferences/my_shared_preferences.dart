import 'package:shared_preferences/shared_preferences.dart';

class MySharedPrefs {
  MySharedPrefs._();

  // STORING KEYS
  static const _isFirstTimer = 'isFirstTimer';

  // FIREBASE CLOUD MESSANGING TOKEN
  static const String _fcmTokenKey = 'fcm_token';

  // APP THEME KEY
  static const String _lightThemeKey = 'is_theme_light';

  static late SharedPreferences _prefs;

  /// Initialize shared preferences instance
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // * FCM STUFF
  /// save generated fcm token
  static Future<void> setFcmToken(String token) =>
      _prefs.setString(_fcmTokenKey, token);

  /// get authorization token
  static String? getFcmToken() => _prefs.getString(_fcmTokenKey);

  // * THEME
  /// set theme current type as light theme
  static Future<void> setThemeIsLight(bool lightTheme) =>
      _prefs.setBool(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool getThemeIsLight() =>
      _prefs.getBool(_lightThemeKey) ??
      true; // todo set the default theme (true for light, false for dark)

  // *

  /// check if user is first time open the app
  static bool getIsFirstTimer() {
    return _prefs.getBool(_isFirstTimer) ?? true;
  }

  ///  clear all data from shared pref
  static Future<void> clear() async => await _prefs.clear();
}

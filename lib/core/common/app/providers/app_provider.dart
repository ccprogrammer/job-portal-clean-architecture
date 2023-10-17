import 'package:job_portal_clean_architecture/core/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  bool _isLightModeOn = true;
  bool get isLightModeOn => _isLightModeOn;

  void init() {
    initTheme();
    notifyListeners();
  }

  /// get last cached theme data from device
  void initTheme() {
    final isLightTheme = AppTheme.getThemeIsLight;

    if (!isLightTheme) {
      _isLightModeOn = false;
    }
  }

  void changeTheme(BuildContext context) {
    _isLightModeOn = !_isLightModeOn;
    notifyListeners();
  }
}

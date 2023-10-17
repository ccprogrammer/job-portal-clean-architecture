import 'package:job_portal_clean_architecture/core/cache/preferences/my_shared_preferences.dart';
import 'package:job_portal_clean_architecture/core/config/theme/app_colors.dart';
import 'package:job_portal_clean_architecture/core/config/theme/app_styles.dart';
import 'package:job_portal_clean_architecture/core/config/theme/fonts.dart';
import 'package:job_portal_clean_architecture/core/extensions/provider_extension.dart';
import 'package:job_portal_clean_architecture/main.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  /// This function will generate ThemeData in [MaterialApp] in [App]
  static ThemeData getThemeData({required bool isLightTheme}) {
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: AppFonts.poppins,
      colorSchemeSeed:
          isLightTheme ? AppColors.primaryLight : AppColors.primaryDark,
      extensions: [
        AppStyles.getAppThemeExt(isLightTheme: isLightTheme),
      ],
    );
  }

  /// pass context to lookup the provider for theme change
  static void changeTheme(BuildContext context) {
    context.appProviderRead.changeTheme(context);

    // check if the current theme is light (default is light)
    bool isLightTheme = MySharedPrefs.getThemeIsLight();

    // store the new theme mode on get storage
    MySharedPrefs.setThemeIsLight(!isLightTheme);
  }

  static bool get getThemeIsLight => MySharedPrefs.getThemeIsLight();
}

import 'package:job_portal_clean_architecture/core/config/theme/app_colors.dart';
import 'package:job_portal_clean_architecture/core/config/theme/theme_extensions/app_theme_ext.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static AppThemeExt getAppThemeExt({required bool isLightTheme}) {
    return AppThemeExt(
      // * COLORS
      primary: isLightTheme ? AppColors.blue : AppColors.amber,
      secondary: isLightTheme ? AppColors.white : AppColors.black,
      black: isLightTheme ? AppColors.black : AppColors.white,
      white: isLightTheme ? AppColors.white : AppColors.black,

      // * FONTS
      text: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: isLightTheme ? AppColors.black : AppColors.white,
      ),
      textMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: isLightTheme ? AppColors.black : AppColors.white,
      ),
      textSemibold: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: isLightTheme ? AppColors.black : AppColors.white,
      ),
      textBold: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: isLightTheme ? AppColors.black : AppColors.white,
      ),
    );
  }
}

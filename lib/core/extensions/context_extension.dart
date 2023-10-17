import 'package:job_portal_clean_architecture/core/config/theme/theme_extensions/app_theme_ext.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  ThemeData get kTheme => Theme.of(this);

  AppThemeExt get theme => Theme.of(this).extension<AppThemeExt>()!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => mediaQuery.size;

  double get width => size.width;

  double get height => size.height;
}

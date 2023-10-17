import 'package:flutter/material.dart';

/// My custom theme extension
@immutable
class AppThemeExt extends ThemeExtension<AppThemeExt> {
  const AppThemeExt({
    required this.primary,
    required this.secondary,
    required this.black,
    required this.white,
    required this.text,
    required this.textMedium,
    required this.textSemibold,
    required this.textBold,
  });

  // primary/secondary
  final Color primary;
  final Color secondary;

  // color
  final Color black;
  final Color white;

  // textstyle
  final TextStyle text;
  final TextStyle textMedium;
  final TextStyle textSemibold;
  final TextStyle textBold;

  @override
  ThemeExtension<AppThemeExt> copyWith() {
    return AppThemeExt(
      primary: primary,
      secondary: secondary,
      black: black,
      white: white,
      text: text,
      textMedium: textMedium,
      textSemibold: textSemibold,
      textBold: textBold,
    );
  }

  @override
  ThemeExtension<AppThemeExt> lerp(
      ThemeExtension<AppThemeExt>? other, double t) {
    if (other is! AppThemeExt) {
      return this;
    }
    return AppThemeExt(
      primary: Color.lerp(primary, other.primary, t)!,
      black: Color.lerp(black, other.black, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      white: Color.lerp(white, other.white, t)!,
      text: TextStyle.lerp(
        text,
        other.text,
        t,
      )!,
      textMedium: TextStyle.lerp(
        textMedium,
        other.textMedium,
        t,
      )!,
      textSemibold: TextStyle.lerp(
        textSemibold,
        other.textSemibold,
        t,
      )!,
      textBold: TextStyle.lerp(
        textBold,
        other.textBold,
        t,
      )!,
    );
  }
}

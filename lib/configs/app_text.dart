import 'package:flutter/material.dart';
import 'app_theme.dart';

class AppText {
  static TextStyle get h1 => TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppTheme.c?.text ?? Colors.black,
  );

  static TextStyle get h2 => TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppTheme.c?.text ?? Colors.black,
  );

  static TextStyle get h3 => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppTheme.c?.text ?? Colors.black,
  );

  static TextStyle get h3b => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppTheme.c?.text ?? Colors.black,
  );

  static TextStyle get b1 => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppTheme.c?.text ?? Colors.black,
  );

  static TextStyle get b2 => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppTheme.c?.text ?? Colors.black,
  );

  static TextStyle get b2b => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppTheme.c?.text ?? Colors.black,
  );

  static TextStyle get l1 => TextStyle(
    fontSize: 14,
    color: AppTheme.c?.text ?? Colors.black,
  );
}

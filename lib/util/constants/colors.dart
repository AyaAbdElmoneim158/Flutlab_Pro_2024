import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //Basic_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  static const Color primary = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffe24b);
  static const Color accent = Color(0xffb8c7ff);

  //Gradient_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  //Text_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6c7570);
  static const Color textWhite = Colors.white;

  //Background_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  //Background_Container_Colors - - - - - - - - - - - - - - - - - - - - - - - -
  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = TColors.white.withOpacity(0.1);

  //Button_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c7570);
  static const Color buttonDisables = Color(0xffc4c4c4);

  //Border_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

  //Error_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //Neutral_Colors - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}

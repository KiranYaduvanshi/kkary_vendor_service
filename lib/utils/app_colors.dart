import 'package:flutter/material.dart';

class AppColors {
  //Colors
  static const Color blueDark = Color(0xFF247BB1);
  static const Color blueMedium = Color(0xFF2FB4FF);
  static const Color blueLight = Color(0xFF3E9BD5);
  static const Color blueExtraLight = Color(0xFF35C9F6);
  static const Color gray = Color(0xFFF5F5F5);
  static const Color lightgray = Color(0xFFF5F5F6);
  static const Color grayDark = Color(0xFF888888);
  static const Color white = Colors.white;
  static const Color blueExtraDark = Color(0xFF18223B);
  static const Color orange = Color(0xFFF6460D);
  static const Color black = Colors.black;
  static const Color parrotgreen = Color(0xFF8EAB3B);
  static const Color green = Color(0xFF07D68B);

  // Gradients
  static const LinearGradient gradientBlue = LinearGradient(
    colors: [blueDark, blueLight],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

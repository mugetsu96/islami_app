import 'package:flutter/material.dart';

class AppTheme {
  static const Color blackColor = Color(0xFF202020);
  static const Color primaryColor = Color(0xFFE2BF7F);
  static const Color whiteColor = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData();

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      selectedItemColor: whiteColor,
      unselectedItemColor: blackColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: whiteColor,
      ),
    ),
  );
}

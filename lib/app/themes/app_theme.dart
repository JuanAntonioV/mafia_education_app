import 'package:flutter/material.dart';
import 'package:mafia_education_app/app/themes/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Inter',
      primaryColor: AppColors.PRIMARY,
      colorScheme: const ColorScheme.light(
        primary: AppColors.PRIMARY,
        secondary: AppColors.SECONDARY,
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: AppColors.TEXT_PRIMARY,
          size: 22,
        ),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.TEXT_PRIMARY,
        ),
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          color: AppColors.TEXT_PRIMARY,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.PRIMARY,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          minimumSize: const Size(double.infinity, 20.0),
          shape: const StadiumBorder(),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          minimumSize: const Size(double.infinity, 20.0),
          shape: const StadiumBorder(),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        labelStyle: TextStyle(fontSize: 14),
        hintStyle: TextStyle(fontSize: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey; // Disabled checkbox color
          } else if (states.contains(MaterialState.selected)) {
            return Colors.blue; // Checked checkbox color
          }
          return Colors.grey; // Unchecked checkbox color
        }),
        checkColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey; // Disabled checkbox check color
          } else if (states.contains(MaterialState.selected)) {
            return Colors.white; // Checked checkbox check color
          }
          return Colors.grey; // Unchecked checkbox check color
        }),
      ),
    );
  }
}

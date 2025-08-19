import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    titleLarge: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    ),

    bodyLarge: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),

    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.5),
    ),
    labelSmall: TextStyle().copyWith(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.5),
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';
import 'package:supercoder_task_assignment/utils/theme/app_appbar_theme.dart';
import 'package:supercoder_task_assignment/utils/theme/app_elevated_button_theme.dart';
import 'package:supercoder_task_assignment/utils/theme/app_input_decoration_theme.dart';
import 'package:supercoder_task_assignment/utils/theme/app_tabbar_theme.dart';
import 'package:supercoder_task_assignment/utils/theme/app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
    appBarTheme: AppAppbarTheme.lightAppBarTheme,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: AppInputDecorationTheme.lightInputDecorationTheme,
    tabBarTheme: AppTabBarTheme.lightTabBarTheme
  );
}
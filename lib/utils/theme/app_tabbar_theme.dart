import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class AppTabBarTheme {
  AppTabBarTheme._();

  static final lightTabBarTheme = TabBarTheme(
    labelColor: AppColors.charcoal,
    unselectedLabelColor: Colors.grey,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(
        color: AppColors.primaryAccent,
        width: 3,
      ),
      insets: EdgeInsets.zero,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
  );
}
import 'package:flutter/material.dart';

class AppAppbarTheme {
  AppAppbarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
  );
}
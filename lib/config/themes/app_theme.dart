import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery/core/utils/app_colors.dart';

ThemeData appTheme() => ThemeData(
      primaryColor: AppColors.blue,
      hintColor: AppColors.grey,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 22,
          height: 1.5,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

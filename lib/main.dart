import 'package:flutter/material.dart';
import 'package:gallery/config/routes/app_router.dart';
import 'package:gallery/config/routes/app_routes.dart';
import 'package:gallery/config/themes/app_theme.dart';
import 'package:gallery/core/utils/app_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.initialPageRoute,
    );
  }
}

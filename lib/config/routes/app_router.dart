import 'package:flutter/material.dart';
import 'package:gallery/config/routes/app_routes.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/features/auth/presentation/pages/login_page.dart';
import 'package:gallery/features/gallery/presentation/pages/gallery_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initialPageRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
          settings: settings,
        );
      case AppRoutes.galleryPageRoute:
        return MaterialPageRoute(
          builder: (_) => const GalleryPage(),
          settings: settings,
        );
      default:
        return _unDefinedRoute(settings);
    }
  }

  static Route? _unDefinedRoute(RouteSettings settings) => MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(AppStrings.noRouteFound),
          ),
        ),
        settings: settings,
      );
}

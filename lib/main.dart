import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/config/di/injectable.dart';
import 'package:gallery/config/routes/app_router.dart';
import 'package:gallery/config/routes/app_routes.dart';
import 'package:gallery/config/themes/app_theme.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:gallery/features/gallery/presentation/cubit/gallery_cubit/gallery_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GalleryCubit>(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, _) {
            return MaterialApp(
              title: AppStrings.appName,
              debugShowCheckedModeBanner: false,
              theme: appTheme(),
              onGenerateRoute: AppRouter.onGenerateRoute,
              initialRoute: context.read<AuthCubit>().currentUser != null
                  ? AppRoutes.galleryPageRoute
                  : AppRoutes.initialPageRoute,
            );
          }),
    );
  }
}

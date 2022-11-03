import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/config/routes/app_routes.dart';
import 'package:gallery/core/utils/assets_manager.dart';
import 'package:gallery/core/utils/constants.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_states.dart';
import 'package:gallery/features/auth/presentation/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (_) => Navigator.pushNamedAndRemoveUntil(
              context, AppRoutes.galleryPageRoute, (route) => route.isFirst),
          error: (errorMessage) => showSnackBar(
            context: context,
            message: errorMessage,
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(),
        extendBodyBehindAppBar: true,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              ImageAssets.loginBg,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            const LoginBody(),
          ],
        ),
      ),
    );
  }
}

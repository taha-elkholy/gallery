import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/config/routes/app_routes.dart';
import 'package:gallery/core/presentation/widgets/page_with_background.dart';
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
          loaded: (_) => Navigator.pushReplacementNamed(
            context,
            AppRoutes.galleryPageRoute,
          ),
          error: (errorMessage) => Constants.showErrorDialog(
            context: context,
            message: errorMessage,
          ),
        );
      },
      child: const PageWithBackground(
        backgroundAssetName: ImageAssets.loginBg,
        child: LoginBody(),
      ),
    );
  }
}

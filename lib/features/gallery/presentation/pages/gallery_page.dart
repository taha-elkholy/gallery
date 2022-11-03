import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/config/routes/app_routes.dart';
import 'package:gallery/core/presentation/widgets/page_with_background.dart';
import 'package:gallery/core/utils/assets_manager.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_states.dart';
import 'package:gallery/features/gallery/presentation/widgets/gallery_body.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
      listener: (context, state) {
        state.whenOrNull(
            logout: () => Navigator.pushReplacementNamed(
                context, AppRoutes.initialPageRoute),);
      },
      child: const PageWithBackground(
        backgroundAssetName: ImageAssets.galleryBg,
        child: GalleryBody(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/core/utils/assets_manager.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:gallery/features/gallery/presentation/cubit/gallery_cubit/gallery_cubit.dart';
import 'package:gallery/features/gallery/presentation/cubit/gallery_cubit/gallery_states.dart';
import 'package:gallery/features/gallery/presentation/widgets/custom_icon_text_button.dart';
import 'package:gallery/features/gallery/presentation/widgets/images_grid_view.dart';
import 'package:gallery/features/gallery/presentation/widgets/upload_image_dialog.dart';
import 'package:gallery/features/gallery/presentation/widgets/user_name.dart';

class GalleryBody extends StatefulWidget {
  const GalleryBody({Key? key}) : super(key: key);

  @override
  State<GalleryBody> createState() => _GalleryBodyState();
}

class _GalleryBodyState extends State<GalleryBody> {
  //late final String token;

  @override
  void initState() {
    super.initState();
    //token = context.read<AuthCubit>().currentUser!.token;
    //print('Token From Body $token');
    //context.read<GalleryCubit>().getGallery(token: token);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20.h,
          ),
          const UserProfile(),
          SizedBox(
            height: 20.h,
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomIconTextButton(
                  label: AppStrings.logout,
                  iconPath: ImageAssets.logoutIcon,
                  onPressed: () {
                    context.read<AuthCubit>().logout();
                  },
                ),
                SizedBox(
                  width: 20.w,
                ),
                CustomIconTextButton(
                  label: AppStrings.upload,
                  iconPath: ImageAssets.uploadIcon,
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      barrierColor: Colors.transparent,
                      builder: (BuildContext context) =>
                          const UploadImageDialog(),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: BlocBuilder<GalleryCubit, GalleryStates>(
              buildWhen: (previous, current) =>
                  current is! GalleryFilePickedState ||
                  current is! GalleryUploadedState,
              builder: (context, state) {
                return state.maybeWhen(
                    loaded: (gallery) => RefreshIndicator(
                          onRefresh: () => context
                              .read<GalleryCubit>()
                              .getGallery(token: 'token'),
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            children: [ImagesGridView(images: gallery.images)],
                          ),
                        ),
                    loading: () => Center(
                          child: CircularProgressIndicator(
                            color: AppColors.white,
                          ),
                        ),
                    error: (errorMessage) => Center(
                          child: Text(
                            errorMessage,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                    orElse: SizedBox.shrink);
              },
            ),
          ),
        ],
      ),
    );
  }
}

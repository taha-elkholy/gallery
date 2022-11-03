import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/core/utils/assets_manager.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:gallery/features/gallery/presentation/widgets/custom_icon_text_button.dart';
import 'package:gallery/features/gallery/presentation/widgets/images_grid_view.dart';
import 'package:gallery/features/gallery/presentation/widgets/user_name.dart';

class GalleryBody extends StatelessWidget {
  const GalleryBody({Key? key}) : super(key: key);

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
          const UserName(),
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
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
              child: ImagesGridView(
                  images: [
            'https://media.isto8484ckphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istock256'
                'photo.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
            'https://media.istockphoto.com/photos/surface-of-blue-swimming-pool-picture-id1161207694',
          ]))
        ],
      ),
    );
  }
}

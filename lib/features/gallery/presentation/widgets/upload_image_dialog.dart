import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/core/utils/assets_manager.dart';
import 'package:gallery/features/gallery/presentation/cubit/gallery_cubit/gallery_cubit.dart';
import 'package:gallery/features/gallery/presentation/widgets/custom_icon_text_button.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageDialog extends StatelessWidget {
  const UploadImageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      contentPadding: EdgeInsets.all(30.w),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            final imageFile = context.read<GalleryCubit>().imageFile;
            if (imageFile != null) {
              context.read<GalleryCubit>().uploadImage(image: imageFile);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(AppStrings.noImagePicked),
                ),
              );
            }
          },
          child: Text(
            AppStrings.ok,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        TextButton(
          onPressed: () {
            context.read<GalleryCubit>().imageFile = null;
            Navigator.pop(context);
          },
          child: Text(
            AppStrings.cancel,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        )
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _DialogButton(
            label: AppStrings.gallery,
            iconPath: ImageAssets.galleryIcon,
            color: AppColors.dialogButtonColor,
            onPressed: () async {
              await context
                  .read<GalleryCubit>()
                  .pickMyImage(source: ImageSource.gallery);
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          _DialogButton(
            label: AppStrings.camera,
            iconPath: ImageAssets.cameraIcon,
            onPressed: () async {
              await context
                  .read<GalleryCubit>()
                  .pickMyImage(source: ImageSource.camera);
            },
          ),
        ],
      ),
    );
  }
}

class _DialogButton extends StatelessWidget {
  const _DialogButton(
      {Key? key,
      required this.label,
      required this.iconPath,
      required this.onPressed,
      this.color})
      : super(key: key);

  final String label;
  final String iconPath;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomIconTextButton(
      label: label,
      height: 65.w,
      iconWidth: 48.w,
      color: color ?? AppColors.white,
      iconPath: iconPath,
      onPressed: onPressed,
    );
  }
}

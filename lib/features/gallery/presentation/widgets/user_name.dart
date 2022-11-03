import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/core/utils/assets_manager.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.welcomeText(
              context.read<AuthCubit>().currentUser?.name.split(' ').first ??
                  ''),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: AppStrings.fontFamily,
                fontWeight: FontWeight.w600,
                fontSize: 32.sp,
                color: AppColors.black,
                height: 1.3,
              ),
        ),
        CircleAvatar(
          radius: 30.r,
          backgroundImage: Image.asset(
            ImageAssets.profile,
            fit: BoxFit.cover,
          ).image,
        )
      ],
    );
  }
}

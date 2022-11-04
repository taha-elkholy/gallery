import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/features/auth/presentation/widgets/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        SizedBox(
          height: 100.h,
        ),
        Text(
          AppStrings.myGallery,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 24.h,
        ),
        const LoginForm(),
      ],
    );
  }
}

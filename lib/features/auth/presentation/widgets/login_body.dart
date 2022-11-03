import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/core/utils/media_query_values.dart';
import 'package:gallery/features/auth/presentation/widgets/login_form.dart';
import 'package:gallery/features/auth/presentation/widgets/login_title.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.tabletSize) {
      return const _Tablet();
    }
    return const _Mobil();
  }
}

class _Mobil extends StatelessWidget {
  const _Mobil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: context.height * 0.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
            child: Text(
              AppStrings.myGallery,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          const LoginForm(),
        ],
      ),
    );
  }
}

class _Tablet extends StatelessWidget {
  const _Tablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: context.width * 0.4,
          child: const LoginTitle(),
        ),
        const Expanded(
          child: LoginForm(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_states.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
      listener: (context, state) {
        state.whenOrNull(
            logout: () =>
                Navigator.popUntil(context, (route) => route.isFirst));
      },
      child: Scaffold(
        body: Center(
          child: InkWell(
              onTap: () => context.read<AuthCubit>().logout(),
              child: Text('gallery')),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/presentation/widgets/custom_elevated_button.dart';
import 'package:gallery/core/presentation/widgets/custom_text_form_field.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/features/auth/domain/usecases/login_use_case.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:gallery/features/auth/presentation/cubit/auth_cubit/auth_states.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _userNameController = TextEditingController(text: 'slynch@example.org');
    _passwordController = TextEditingController(text: 'password');
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColors.white.withOpacity(.5)),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 24.h,
              bottom: MediaQuery.of(context).viewInsets.bottom + 24.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.login,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomTextFormField(
                  controller: _userNameController,
                  hint: AppStrings.userName,
                  inputType: TextInputType.emailAddress,
                  validate: (email) =>
                      context.read<AuthCubit>().validateEmail(email: email),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomTextFormField(
                  controller: _passwordController,
                  hint: AppStrings.password,
                  inputType: TextInputType.visiblePassword,
                  isPassword: true,
                  validate: (password) => context
                      .read<AuthCubit>()
                      .validatePassword(password: password),
                ),
                SizedBox(
                  height: 24.h,
                ),
                BlocBuilder<AuthCubit, AuthStates>(
                  buildWhen: (previous, current) =>
                      current is AuthLoadingState || current is AuthErrorState,
                  builder: (context, state) {
                    return CustomElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().login(
                                loginParam: LoginParam(
                                  email: _userNameController.text,
                                  password: _passwordController.text,
                                ),
                              );
                        }
                      },
                      label: AppStrings.submit,
                      isLoading: state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

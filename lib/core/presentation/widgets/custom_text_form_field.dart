import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.hint,
      this.isPassword = false,
      this.validate,
      required this.inputType})
      : super(key: key);

  final TextEditingController controller;
  final String hint;
  final bool isPassword;
  final String? Function(String?)? validate;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 46.h,
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        maxLines: 1,
        keyboardType: inputType,
        style: Theme.of(context).textTheme.bodyMedium,
        validator: validate,
        cursorColor: AppColors.grey,
        decoration: InputDecoration(
          hintText: hint,
        ),
      ),
    );
  }
}

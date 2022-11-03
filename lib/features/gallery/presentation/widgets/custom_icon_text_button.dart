import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/app_strings.dart';

class CustomIconTextButton extends StatelessWidget {
  const CustomIconTextButton(
      {Key? key,
      required this.label,
      required this.iconPath,
      required this.onPressed,
      this.color,
      this.width,
      this.height, this.iconWidth})
      : super(key: key);
  final String label;
  final String iconPath;
  final VoidCallback onPressed;
  final Color? color;
  final double? width;
  final double? height;
  final double? iconWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: width ?? 145.w,
        height: height ?? 39.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: color ?? AppColors.white.withOpacity(.56),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  iconPath,
                  width: iconWidth ?? 32.w,
                  height: iconWidth ?? 32.w,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontFamily: AppStrings.fontFamily,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColors.black,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

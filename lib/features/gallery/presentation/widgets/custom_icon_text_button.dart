import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/utils/app_colors.dart';

class CustomIconTextButton extends StatelessWidget {
  const CustomIconTextButton(
      {Key? key,
      required this.label,
      required this.iconPath,
      required this.onPressed})
      : super(key: key);
  final String label;
  final String iconPath;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 145.w,
        height: 39.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.white.withOpacity(.5),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  iconPath,
                  width: 32.w,
                  height: 32.w,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontFamily: 'Changa',
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

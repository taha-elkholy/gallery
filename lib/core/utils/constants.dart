import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/app_strings.dart';

class Constants {
  static void showErrorDialog({
    required BuildContext context,
    required String message,
  }) {
    showDialog(
      context: context,
      builder: ((context) => CupertinoAlertDialog(
            title: Text(
              message,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.blue,
                ),
                child: const Text(AppStrings.ok),
              )
            ],
          )),
    );
  }
}

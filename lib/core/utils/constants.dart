import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery/core/utils/app_colors.dart';
import 'package:gallery/core/utils/app_strings.dart';
import 'package:gallery/core/utils/media_query_values.dart';

class Constants {
  static void showErrorDialog({
    required BuildContext context,
    required String message,
  }) {
    showDialog(
      context: context,
      builder: ((context) => CupertinoAlertDialog(
            title: Text(
              AppStrings.appName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            content: SizedBox(
              width: context.width * 0.6,
              height: context.width * 0.6,
              child: Center(
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.blue,
                ),
                child: Text(
                  AppStrings.ok,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )
            ],
          )),
    );
  }
}

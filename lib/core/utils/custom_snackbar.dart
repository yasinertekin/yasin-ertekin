import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/extension/theme_extension.dart';
import 'package:yasin_ertekin_portfolio/core/utils/key_helper.dart';

enum SnackBarType { error, success, warning, info }

@immutable
final class CustomSnackBar {
  const CustomSnackBar._();
  static Future<void> show({
    required String message,
    SnackBarType type = SnackBarType.error,
    String? actionLabel,
    VoidCallback? onActionPressed,
    Duration duration = const Duration(seconds: 4),
  }) async {
    final context = KeyHelper.scaffoldMessengerKey.currentContext;
    if (context == null || !context.mounted) return;

    final colorScheme = context.theme.colorScheme;

    Color backgroundColor;
    Color textColor;

    switch (type) {
      case SnackBarType.error:
        backgroundColor = colorScheme.errorContainer;
        textColor = colorScheme.onErrorContainer;
      case SnackBarType.success:
        backgroundColor = colorScheme.primaryContainer;
        textColor = colorScheme.onPrimaryContainer;
      case SnackBarType.warning:
        backgroundColor = Colors.amber;
        textColor = Colors.black;
      case SnackBarType.info:
        backgroundColor = colorScheme.primaryContainer;
        textColor = colorScheme.onPrimaryContainer;
    }

    final snackBar = SnackBar(
      content: Text(message, style: TextStyle(color: textColor)),
      backgroundColor: backgroundColor,
      duration: duration,
      action:
          actionLabel != null && onActionPressed != null
              ? SnackBarAction(
                label: actionLabel,
                onPressed: onActionPressed,
                textColor: textColor,
              )
              : null,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(8),
    );

    KeyHelper.scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yasin_ertekin_portfolio/core/utils/custom_snackbar.dart';

@immutable
final class LaunchUrlHelper {
  const LaunchUrlHelper._();

  static const String _scheme = 'mailto';
  static const String _email = 'yasinertekinn@outlook.com';

  static Future<void> launchUrls(String url) async {
    try {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        await CustomSnackBar.show(message: 'Not Supported');
      }
    } catch (e) {
      await CustomSnackBar.show(message: 'Not Supported');
    }
  }

  static String? _encodeQueryParams(Map<String, String> params) {
    return params.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }

  static Future<void> launchEmail() async {
    final query = _encodeQueryParams({'subject': '', 'body': ''});

    final emailUri = Uri(scheme: _scheme, path: _email, query: query);

    await launchUrls(emailUri.toString());
  }
}

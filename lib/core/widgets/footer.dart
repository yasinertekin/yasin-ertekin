import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_icons.dart';
import 'package:yasin_ertekin_portfolio/core/constants/string_constants.dart';
import 'package:yasin_ertekin_portfolio/core/extension/theme_extension.dart';
import 'package:yasin_ertekin_portfolio/core/utils/project_padding.dart';
import 'package:yasin_ertekin_portfolio/l10n/app_localizations.dart';

@immutable
final class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final currentYear = DateTime.now().year;

    return Container(
      width: double.infinity,
      padding: ProjectPadding.verticalMedium,
      child: Column(
        spacing: 16,
        children: [
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© $currentYear ${StringConstants.appName} ${localizations?.footerRights ?? ''}',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.theme.colorScheme.onSurface.withValues(
                    alpha: 0.6,
                  ),
                ),
              ),
            ],
          ),
          Row(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(ProjectIcons.flutter, size: 14),
              Text(
                localizations?.builtWithFlutter ?? 'Built with Flutter',
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.onSurface.withValues(
                    alpha: 0.6,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_icons.dart';
import 'package:yasin_ertekin_portfolio/core/extension/theme_extension.dart';
import 'package:yasin_ertekin_portfolio/core/model/skills.dart';
import 'package:yasin_ertekin_portfolio/core/utils/project_padding.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/skill_chip.dart';
import 'package:yasin_ertekin_portfolio/l10n/app_localizations.dart';

@immutable
final class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Padding(
      padding: ProjectPadding.allLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: <Widget>[
          Row(
            spacing: 8,
            children: <Widget>[
              Icon(
                ProjectIcons.user,
                color: context.theme.colorScheme.primary,
                size: 28,
              ),
              Text(
                localizations?.aboutTitle ?? '',
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 24,
            children: <Widget>[
              Text(
                localizations?.aboutContent ?? '',
                style: context.textTheme.bodyLarge,
              ),
              const _SkillsRow._(),
            ],
          ),
        ],
      ),
    );
  }
}

@immutable
final class _SkillsRow extends StatelessWidget {
  const _SkillsRow._();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: SkillsList.allSkills
          .map((skill) {
            return SkillChip(skill: skill);
          })
          .toList(growable: false),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_icons.dart';
import 'package:yasin_ertekin_portfolio/core/extension/theme_extension.dart';
import 'package:yasin_ertekin_portfolio/core/model/project.dart';
import 'package:yasin_ertekin_portfolio/core/utils/project_border_radius.dart';
import 'package:yasin_ertekin_portfolio/core/utils/project_padding.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/project_card.dart';
import 'package:yasin_ertekin_portfolio/l10n/app_localizations.dart';

@immutable
final class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: ProjectPadding.allLarge,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.3,
        ),
        borderRadius: ProjectBorderRadius.allLarge,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: <Widget>[
          Row(
            spacing: 16,
            children: <Widget>[
              Icon(
                ProjectIcons.code,
                color: context.theme.colorScheme.primary,
                size: 28,
              ),
              Text(
                localizations.projectsTitle,
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              ProjectList.projects.length,
              (index) => Expanded(
                child: IntrinsicHeight(
                  child: ProjectCard(project: ProjectList.projects[index]),
                ),
              ),
            ).toList(growable: false),
          ),
        ],
      ),
    );
  }
}

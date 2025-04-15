import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: ProjectList.projects
                .map((project) {
                  final cardWidth =
                      ResponsiveValue<double>(
                        context,
                        conditionalValues: [
                          const Condition.smallerThan(
                            name: TABLET,
                            value: double.infinity,
                          ),
                          const Condition.equals(name: TABLET, value: 400),
                          const Condition.largerThan(name: TABLET, value: 450),
                        ],
                        defaultValue: 450,
                      ).value;

                  return SizedBox(
                    width: cardWidth,
                    child: ProjectCard(project: project),
                  );
                })
                .toList(growable: false),
          ),
        ],
      ),
    );
  }
}

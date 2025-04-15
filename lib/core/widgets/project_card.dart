import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yasin_ertekin_portfolio/core/extension/theme_extension.dart';
import 'package:yasin_ertekin_portfolio/core/model/project.dart';
import 'package:yasin_ertekin_portfolio/core/utils/launch_url_helper.dart';
import 'package:yasin_ertekin_portfolio/core/utils/project_border_radius.dart';
import 'package:yasin_ertekin_portfolio/core/utils/project_padding.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/skill_chip.dart';

@immutable
final class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: const RoundedRectangleBorder(
        borderRadius: ProjectBorderRadius.allMedium,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            _ProjectImage(project: project),
            Expanded(
              child: Padding(
                padding: ProjectPadding.allMedium,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: <Widget>[
                    _ProjectTitle(project: project),
                    _ProjectDescription(project: project),
                    _ProjectTechnologies(project: project),
                    const Spacer(),
                    _ProjectLinks(project: project),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final class _ProjectImage extends StatelessWidget {
  const _ProjectImage({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final imageSize =
        ResponsiveValue<double>(
          context,
          conditionalValues: [
            const Condition.smallerThan(name: TABLET, value: 180),
            const Condition.largerThan(name: TABLET, value: 200),
          ],
          defaultValue: 200,
        ).value;

    return SizedBox(
      height: imageSize,
      child: Center(
        child: ClipOval(
          child: Image.asset(
            project.imageAsset,
            fit: BoxFit.cover,
            width: imageSize,
            height: imageSize,
          ),
        ),
      ),
    );
  }
}

final class _ProjectTitle extends StatelessWidget {
  const _ProjectTitle({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        project.title(context),
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

final class _ProjectDescription extends StatelessWidget {
  const _ProjectDescription({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final descriptionHeight =
        ResponsiveValue<double>(
          context,
          conditionalValues: [
            const Condition.smallerThan(name: TABLET, value: 150),
            const Condition.largerThan(name: TABLET, value: 120),
          ],
          defaultValue: 120,
        ).value;

    return SizedBox(
      width: double.infinity,
      height: descriptionHeight,
      child: SingleChildScrollView(
        child: Text(
          project.description(context),
          style: context.textTheme.bodyLarge,
        ),
      ),
    );
  }
}

@immutable
final class _ProjectTechnologies extends StatelessWidget {
  const _ProjectTechnologies({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final techHeight =
        ResponsiveValue<double>(
          context,
          conditionalValues: [
            const Condition.smallerThan(name: TABLET, value: 100),
            const Condition.largerThan(name: TABLET, value: 80),
          ],
          defaultValue: 80,
        ).value;
    return SizedBox(
      height: techHeight,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: project.technologies
              .map((tech) => SkillChip(skill: tech))
              .toList(growable: false),
        ),
      ),
    );
  }
}

@immutable
final class _ProjectLinks extends StatelessWidget {
  const _ProjectLinks({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: ProjectPadding.onlyTopMedium,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.theme.dividerColor.withValues(alpha: 0.1),
          ),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          alignment: WrapAlignment.end,
          spacing: _getResponsiveSpacing(context),
          runSpacing: 8,
          children: ProjectPlatform.values
              .where(project.hasLink)
              .map(
                (platform) => TextButton.icon(
                  onPressed:
                      () => LaunchUrlHelper.launchUrls(
                        project.getLink(platform) ?? '',
                      ),
                  icon: Icon(platform.icon),
                  label: Text(platform.getText(context)),
                ),
              )
              .toList(growable: false),
        ),
      ),
    );
  }

  double _getResponsiveSpacing(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      conditionalValues: [
        const Condition.smallerThan(name: TABLET, value: 4),
        const Condition.largerThan(name: TABLET, value: 8),
      ],
      defaultValue: 8,
    ).value;
  }
}

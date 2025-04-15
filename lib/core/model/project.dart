import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/assets.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_icons.dart';
import 'package:yasin_ertekin_portfolio/core/model/skills.dart';
import 'package:yasin_ertekin_portfolio/l10n/app_localizations.dart';

@immutable
final class Project {
  const Project({
    required this.titleKey,
    required this.descriptionKey,
    required String imageAsset,
    required List<Skills> technologies,
    required Map<ProjectPlatform, String> platformLinks,
  }) : _imageAsset = imageAsset,
       _technologies = technologies,
       _platformLinks = platformLinks;

  final String titleKey;
  final String descriptionKey;
  final String _imageAsset;
  final List<Skills> _technologies;
  final Map<ProjectPlatform, String> _platformLinks;

  String title(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    switch (titleKey) {
      case 'samaticaTitle':
        return localizations.samaticaTitle;
      case 'moonxTitle':
        return localizations.moonxTitle;
      default:
        return titleKey;
    }
  }

  String description(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    switch (descriptionKey) {
      case 'samaticaDescription':
        return localizations.samaticaDescription;
      case 'moonxDescription':
        return localizations.moonxDescription;
      default:
        return descriptionKey;
    }
  }

  String get imageAsset => _imageAsset;
  List<Skills> get technologies => List.unmodifiable(_technologies);
  Map<ProjectPlatform, String> get platformLinks =>
      Map.unmodifiable(_platformLinks);

  bool hasLink(ProjectPlatform platform) =>
      _platformLinks.containsKey(platform);
  String? getLink(ProjectPlatform platform) => _platformLinks[platform];
}

final class ProjectList {
  const ProjectList._();

  static final List<Project> _projects = <Project>[
    Project(
      titleKey: 'samaticaTitle',
      descriptionKey: 'samaticaDescription',
      imageAsset: Assets.imgSamatica.toPng,
      technologies: SkillsList.samaticaSkills,
      platformLinks: const {
        ProjectPlatform.appStore: 'https://apps.apple.com/app/id6744033415',
      },
    ),
    Project(
      titleKey: 'moonxTitle',
      descriptionKey: 'moonxDescription',
      imageAsset: Assets.imgMoonx.toPng,
      technologies: SkillsList.moonxSkills,
      platformLinks: const {
        ProjectPlatform.github: 'https://github.com/yasinertekin/moonx',
      },
    ),
  ];

  static List<Project> get projects => List.unmodifiable(_projects);
}

enum ProjectPlatform {
  github(
    textKey: 'viewGitHub',
    url: 'https://github.com',
    icon: ProjectIcons.github,
  ),
  appStore(
    textKey: 'viewAppStore',
    url: 'https://apps.apple.com',
    icon: ProjectIcons.apple,
  ),
  playStore(
    textKey: 'viewPlayStore',
    url: 'https://play.google.com/store/apps',
    icon: ProjectIcons.android,
  );

  const ProjectPlatform({
    required this.textKey,
    required this.url,
    required this.icon,
  });

  final String textKey;
  final String url;
  final IconData icon;

  String getText(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    switch (textKey) {
      case 'viewGitHub':
        return localizations.viewGitHub;
      case 'viewAppStore':
        return localizations.viewAppStore;
      case 'viewPlayStore':
        return localizations.viewPlayStore;
      default:
        return textKey;
    }
  }
}

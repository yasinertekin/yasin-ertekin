import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_icons.dart';
import 'package:yasin_ertekin_portfolio/core/constants/string_constants.dart';

@immutable
final class Skills {
  const Skills({required this.name, required this.avatar});
  final String name;
  final IconData avatar;
}

@immutable
final class SkillsList {
  static final UnmodifiableListView<Skills>
  _allSkills = UnmodifiableListView<Skills>(<Skills>[
    const Skills(
      name: StringConstants.skillFlutter,
      avatar: ProjectIcons.flutter,
    ),
    const Skills(name: StringConstants.skillDart, avatar: ProjectIcons.dart),
    const Skills(name: StringConstants.skillSwift, avatar: ProjectIcons.swift),
    const Skills(
      name: StringConstants.skillFirebase,
      avatar: ProjectIcons.firebase,
    ),
    const Skills(
      name: StringConstants.skillRestApi,
      avatar: ProjectIcons.restApi,
    ),
    const Skills(name: StringConstants.skillGit, avatar: ProjectIcons.git),
  ]);

  static UnmodifiableListView<Skills> get allSkills => _allSkills;
  static UnmodifiableListView<Skills> get samaticaSkills =>
      UnmodifiableListView<Skills>(<Skills>[
        const Skills(
          name: StringConstants.skillFlutter,
          avatar: ProjectIcons.flutter,
        ),
        const Skills(
          name: StringConstants.skillDart,
          avatar: ProjectIcons.dart,
        ),
        const Skills(
          name: StringConstants.skillFirebase,
          avatar: ProjectIcons.firebase,
        ),
        const Skills(
          name: StringConstants.skillRevenueCat,
          avatar: ProjectIcons.moneyCheckAlt,
        ),
        const Skills(
          name: StringConstants.skillBloc,
          avatar: ProjectIcons.bloc,
        ),
        const Skills(
          name: StringConstants.skillFirebaseRemoteConfig,
          avatar: ProjectIcons.settings,
        ),
        const Skills(
          name: StringConstants.skillFirebaseCrashlytics,
          avatar: ProjectIcons.bug,
        ),
        const Skills(
          name: StringConstants.skillEasyLocalization,
          avatar: ProjectIcons.language,
        ),
      ]);
  static UnmodifiableListView<Skills>
  get moonxSkills => UnmodifiableListView<Skills>(<Skills>[
    const Skills(
      name: StringConstants.skillFlutter,
      avatar: ProjectIcons.flutter,
    ),
    const Skills(name: StringConstants.skillDart, avatar: ProjectIcons.dart),
    const Skills(name: StringConstants.skillBloc, avatar: ProjectIcons.bloc),
    const Skills(
      name: StringConstants.skillHydratedBloc,
      avatar: ProjectIcons.database,
    ),
    const Skills(
      name: StringConstants.skillAutoRoute,
      avatar: ProjectIcons.route,
    ),
    const Skills(name: StringConstants.skillGetIt, avatar: ProjectIcons.plug),
    const Skills(
      name: StringConstants.skillDio,
      avatar: ProjectIcons.networkWired,
    ),
    const Skills(
      name: StringConstants.skillEnvied,
      avatar: ProjectIcons.shieldAlt,
    ),
    const Skills(
      name: StringConstants.skillAudioPlayers,
      avatar: ProjectIcons.music,
    ),
    const Skills(
      name: StringConstants.skillFlutterGen,
      avatar: ProjectIcons.image,
    ),
    const Skills(
      name: StringConstants.skillKartal,
      avatar: ProjectIcons.feather,
    ),
    const Skills(
      name: StringConstants.skillVeryGoodAnalysis,
      avatar: ProjectIcons.checkCircle,
    ),
    const Skills(
      name: StringConstants.skillGoogleGenerativeAI,
      avatar: ProjectIcons.robot,
    ),
  ]);
}

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_icons.dart';
import 'package:yasin_ertekin_portfolio/core/constants/social_url.dart';
import 'package:yasin_ertekin_portfolio/core/constants/string_constants.dart';

@immutable
final class SocialLink {
  const SocialLink({
    required this.url,
    required this.icon,
    required this.tooltip,
  });
  final SocialUrl url;
  final IconData icon;
  final String tooltip;
}

@immutable
final class SocialLinksList {
  const SocialLinksList._();

  static final UnmodifiableListView<SocialLink> _links =
      UnmodifiableListView<SocialLink>(<SocialLink>[
        const SocialLink(
          url: SocialUrl.github,
          icon: ProjectIcons.github,
          tooltip: StringConstants.githubTooltip,
        ),
        const SocialLink(
          url: SocialUrl.linkedin,
          icon: ProjectIcons.linkedin,
          tooltip: StringConstants.linkedinTooltip,
        ),
        const SocialLink(
          url: SocialUrl.medium,
          icon: ProjectIcons.medium,
          tooltip: StringConstants.mediumTooltip,
        ),
        const SocialLink(
          url: SocialUrl.email,
          icon: ProjectIcons.email,
          tooltip: StringConstants.emailTooltip,
        ),
        const SocialLink(
          url: SocialUrl.downloadCV,
          icon: ProjectIcons.download,
          tooltip: StringConstants.downloadCVTooltip,
        ),
      ]);

  static UnmodifiableListView<SocialLink> get links => _links;
}

import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/assets.dart';
import 'package:yasin_ertekin_portfolio/core/extension/theme_extension.dart';
import 'package:yasin_ertekin_portfolio/core/model/social_links.dart';
import 'package:yasin_ertekin_portfolio/core/utils/launch_url_helper.dart';
import 'package:yasin_ertekin_portfolio/l10n/app_localizations.dart';

@immutable
final class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 48,
      children: <Widget>[
        const _ProfileImage._(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Text(
                localizations.name,
                style: context.textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(localizations.about, style: context.textTheme.titleLarge),
              const _SocialLinks._(),
            ],
          ),
        ),
      ],
    );
  }
}

@immutable
final class _SocialLinks extends StatelessWidget {
  const _SocialLinks._();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        growable: false,
        SocialLinksList.links.length,
        (index) => IconButton(
          icon: Icon(SocialLinksList.links[index].icon),
          onPressed:
              () => LaunchUrlHelper.launchUrls(
                SocialLinksList.links[index].url.value,
              ),
          tooltip: SocialLinksList.links[index].tooltip,
        ),
      ),
    );
  }
}

@immutable
final class _ProfileImage extends StatelessWidget {
  const _ProfileImage._();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        Assets.imgProfile.toPng,
        fit: BoxFit.cover,
        width: 200,
        height: 200,
      ),
    );
  }
}

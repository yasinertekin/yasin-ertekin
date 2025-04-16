import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: isDesktop ? 24 : 16,
        horizontal: isDesktop ? 0 : 16,
      ),
      child: Column(
        children: [
          if (!isDesktop) const _ProfileImage._(),
          SizedBox(height: isDesktop ? 0 : 16),
          if (isDesktop)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _ProfileImage._(),
                const SizedBox(width: 48),
                Expanded(
                  child: _buildContent(context, localizations, isDesktop),
                ),
              ],
            )
          else
            _buildContent(context, localizations, isDesktop),
        ],
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    AppLocalizations localizations,
    bool isDesktop,
  ) {
    return Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text(
          localizations.name,
          style: (isDesktop
                  ? context.textTheme.displaySmall
                  : context.textTheme.headlineSmall)
              ?.copyWith(fontWeight: FontWeight.bold),
          textAlign: isDesktop ? TextAlign.start : TextAlign.center,
        ),
        SizedBox(height: isDesktop ? 16 : 8),
        Text(
          localizations.about,
          style:
              isDesktop
                  ? context.textTheme.titleLarge
                  : context.textTheme.titleMedium,
          textAlign: isDesktop ? TextAlign.start : TextAlign.center,
        ),
        SizedBox(height: isDesktop ? 16 : 12),
        const _SocialLinks._(),
      ],
    );
  }
}

@immutable
final class _SocialLinks extends StatelessWidget {
  const _SocialLinks._();

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(MOBILE);

    return Wrap(
      alignment: isDesktop ? WrapAlignment.start : WrapAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: List.generate(
        SocialLinksList.links.length,
        (index) => IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          iconSize: isDesktop ? 24 : 20,
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
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    final size = isDesktop ? 200.0 : 140.0;

    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: Image.asset(
        Assets.imgProfile.toPng,
        fit: BoxFit.cover,
        width: size,
        height: size,
      ),
    );
  }
}

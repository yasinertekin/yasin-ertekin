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

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: isDesktop ? 24 : 12,
        horizontal: isDesktop ? 0 : 16,
      ),
      child: ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.center,
        columnMainAxisAlignment: MainAxisAlignment.center,
        layout:
            isDesktop
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
        rowSpacing: 48,
        columnSpacing: 16,
        children: <ResponsiveRowColumnItem>[
          ResponsiveRowColumnItem(
            rowFlex: isDesktop ? 0 : null,
            child: const _ProfileImage._(),
          ),
          ResponsiveRowColumnItem(
            rowFlex: isDesktop ? 1 : null,
            child: Column(
              crossAxisAlignment:
                  isDesktop
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
              spacing: isDesktop ? 16 : 8,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: isDesktop ? double.infinity : 280,
                  ),
                  child: Text(
                    localizations.name,
                    style: (isDesktop
                            ? context.textTheme.displaySmall
                            : context.textTheme.headlineSmall)
                        ?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: isDesktop ? TextAlign.start : TextAlign.center,
                    softWrap: true,
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: isDesktop ? double.infinity : 280,
                  ),
                  child: Text(
                    localizations.about,
                    style:
                        isDesktop
                            ? context.textTheme.titleLarge
                            : context.textTheme.bodyMedium,
                    textAlign: isDesktop ? TextAlign.start : TextAlign.center,
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: isDesktop ? 0 : 4),
                  child: const _SocialLinks._(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

@immutable
final class _SocialLinks extends StatelessWidget {
  const _SocialLinks._();

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(MOBILE);

    return Container(
      constraints: BoxConstraints(maxWidth: isDesktop ? double.infinity : 280),
      child: Wrap(
        alignment: isDesktop ? WrapAlignment.start : WrapAlignment.center,
        spacing: isDesktop ? 8 : 2,
        runSpacing: 4,
        children: List.generate(
          SocialLinksList.links.length,
          (index) => IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            iconSize: isDesktop ? 24 : 18,
            icon: Icon(SocialLinksList.links[index].icon),
            onPressed:
                () => LaunchUrlHelper.launchUrls(
                  SocialLinksList.links[index].url.value,
                ),
            tooltip: SocialLinksList.links[index].tooltip,
          ),
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
    final size = isDesktop ? 200.0 : 100.0;

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

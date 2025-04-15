import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/notifier/language_notifier.dart';
import 'package:yasin_ertekin_portfolio/core/notifier/theme_notifier.dart';
import 'package:yasin_ertekin_portfolio/core/utils/project_padding.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/about_section.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/footer.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/header.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/home_app_bar.dart';
import 'package:yasin_ertekin_portfolio/core/widgets/projects_section.dart';

@immutable
final class HomeView extends StatelessWidget {
  const HomeView({
    required this.themeNotifier,
    required this.languageNotifier,
    super.key,
  });

  final ThemeNotifier themeNotifier;
  final LanguageNotifier languageNotifier;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          HomeAppBar(
            themeNotifier: themeNotifier,
            languageNotifier: languageNotifier,
          ),
          const _HomeBody._(),
        ],
      ),
    );
  }
}

@immutable
final class _HomeBody extends StatelessWidget {
  const _HomeBody._();

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: ProjectPadding.horizontalMedium,
        child: Column(
          spacing: 40,

          children: <Widget>[
            Header(),
            AboutSection(),
            ProjectsSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

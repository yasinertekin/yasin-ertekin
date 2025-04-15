import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/extension/theme_extension.dart';
import 'package:yasin_ertekin_portfolio/core/model/skills.dart';

@immutable
final class SkillChip extends StatelessWidget {
  const SkillChip({required this.skill, super.key});
  final Skills skill;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill.name),
      avatar: Icon(skill.avatar),
      backgroundColor: context.theme.colorScheme.primary.withValues(alpha: 0.1),
      side: BorderSide(
        color: context.theme.colorScheme.primary.withValues(alpha: 0.2),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skills/skill_model.dart';

class SkillLogo extends StatelessWidget {
  const SkillLogo({
    Key? key,
    required this.skill,
  }) : super(key: key);

  final SkillModel skill;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final logoPath = skill.darkLogoPath != null
        ? isDark
            ? skill.darkLogoPath!
            : skill.logoPath
        : skill.logoPath;
    return Image.asset(logoPath);
  }
}

import 'package:flutter/material.dart';
import 'widgets/skills_desktop_view.dart';
import 'widgets/skills_mobile_view.dart';

class SkillsPresenter extends StatelessWidget {
  const SkillsPresenter({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 1024) {
      return const SkillsDesktopView();
    }

    return const SkillsMobileView();
  }
}

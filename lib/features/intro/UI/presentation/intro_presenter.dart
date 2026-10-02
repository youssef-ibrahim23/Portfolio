import 'package:flutter/material.dart';
import 'widgets/intro_desktop_view.dart';
import 'widgets/intro_mobile_view.dart';

class IntroPresenter extends StatelessWidget {
  final ScrollController? scrollController;
  final GlobalKey? experienceKey;
  final GlobalKey? skillsKey;
  final GlobalKey? projectsKey;
  final GlobalKey? contactKey;

  const IntroPresenter({
    super.key,
    this.scrollController,
    this.experienceKey,
    this.skillsKey,
    this.projectsKey,
    this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 1024) {
      return IntroDesktopView(
        scrollController: scrollController,
        experienceKey: experienceKey,
        skillsKey: skillsKey,
        projectsKey: projectsKey,
        contactKey: contactKey,
      );
    }

    return IntroMobileView(
      scrollController: scrollController,
      experienceKey: experienceKey,
      skillsKey: skillsKey,
      projectsKey: projectsKey,
      contactKey: contactKey,
    );
  }
}
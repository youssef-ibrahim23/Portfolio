import 'package:flutter/material.dart';
import 'widgets/intro_desktop_view.dart';
import 'widgets/intro_mobile_view.dart';

class IntroPresenter extends StatelessWidget {
  final ScrollController? scrollController;
  final GlobalKey? projectsKey;
  final GlobalKey? contactKey;

  const IntroPresenter({
    super.key,
    this.scrollController,
    this.projectsKey,
    this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 1024) {
      return IntroDesktopView(
        scrollController: scrollController,
        projectsKey: projectsKey,
        contactKey: contactKey,
      );
    }

    return IntroMobileView(
      scrollController: scrollController,
      projectsKey: projectsKey,
      contactKey: contactKey,
    );
  }
}
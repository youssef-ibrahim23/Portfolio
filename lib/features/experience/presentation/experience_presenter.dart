import 'package:flutter/material.dart';
import 'widgets/experience_desktop_view.dart';
import 'widgets/experience_mobile_view.dart';

class ExperiencePresenter extends StatelessWidget {
  const ExperiencePresenter({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 1024) {
      return const ExperienceDesktopView();
    }

    return const ExperienceMobileView();
  }
}

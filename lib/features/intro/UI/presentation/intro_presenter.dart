import 'package:flutter/material.dart';
import 'widgets/intro_desktop_view.dart';
import 'widgets/intro_mobile_view.dart';

class IntroPresenter extends StatelessWidget {
  final ScrollController? scrollController;

  const IntroPresenter({super.key, this.scrollController});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 1024) {
      return IntroDesktopView(scrollController: scrollController);
    }

    return IntroMobileView(scrollController: scrollController);
  }
}
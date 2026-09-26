import 'package:flutter/material.dart';
import 'widgets/contact_desktop_view.dart';
import 'widgets/contact_mobile_view.dart';

class ContactMePresenter extends StatelessWidget {
  const ContactMePresenter({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 1024) {
      return const ContactDesktopView();
    }

    return const ContactMobileView();
  }
}
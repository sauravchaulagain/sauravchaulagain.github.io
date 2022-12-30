import 'package:flutter/material.dart';
import 'package:saurav_website/newpage/homePage.dart';

import 'mobileview/mobilepage.dart';

class ResponsivePageView extends StatelessWidget {
  final mobileBody;
  final webBody;

  const ResponsivePageView(
      {super.key, required this.mobileBody, required this.webBody});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return MobilePage();
      } else {
        return HomePage();
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:saurav_website/mobileview/mobile_homePage.dart';
import 'package:saurav_website/webpage/web_homePage.dart';

class ResponsivePageView extends StatelessWidget {
  final mobileBody;
  final webBody;

  const ResponsivePageView(
      {super.key, required this.mobileBody, required this.webBody});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return MobileHomePage();
      } else {
        return WebHomePage();
      }
    });
  }
}

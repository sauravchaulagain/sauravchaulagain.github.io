import 'package:flutter/material.dart';
import 'package:saurav_website/responsive_pageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsivePageView(
        mobileBody: null,
        webBody: null,
      ),
    );
  }
}

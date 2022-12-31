import 'package:flutter/material.dart';
import 'package:saurav_website/webpage/web_homescreen.dart';
import 'package:saurav_website/webpage/web_project.dart';
import 'package:saurav_website/webpage/web_resumee.dart';
import 'package:saurav_website/webpage/web_tabbar.dart';

import 'web_about.dart';
import 'web_contact.dart';
import 'web_endingpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Tabbarr(),
            HomeScreen(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.aspectRatio * 30,
                  horizontal: size.aspectRatio * 70),
              child: Column(
                children: [
                  WebAboutMe(),
                  Project(),
                  Resumee(),
                  WebContact(),
                ],
              ),
            ),
            EndingPage()
          ],
        ),
      ),
    );
  }
}

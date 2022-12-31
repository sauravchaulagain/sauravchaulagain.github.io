import 'package:flutter/material.dart';
import 'package:saurav_website/newpage/homescreen.dart';
import 'package:saurav_website/newpage/project.dart';
import 'package:saurav_website/newpage/resumee.dart';
import 'package:saurav_website/newpage/tabbar.dart';

import 'about.dart';
import 'contact.dart';
import 'finalpage.dart';

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
                  AboutMe(),
                  Project(),
                  Resumee(),
                  Contact(),
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

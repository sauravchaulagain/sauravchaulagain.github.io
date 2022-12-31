import 'package:flutter/material.dart';
import 'package:saurav_website/webpage/web_about.dart';
import 'package:saurav_website/webpage/web_contact.dart';
import 'package:saurav_website/webpage/web_endingpage.dart';
import 'package:saurav_website/webpage/web_homescreen.dart';
import 'package:saurav_website/webpage/web_project.dart';
import 'package:saurav_website/webpage/web_resumee.dart';
import 'package:saurav_website/webpage/web_tabbar.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            WebTabbarr(),
            WebHomeScreen(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.aspectRatio * 30,
                  horizontal: size.aspectRatio * 70),
              child: Column(
                children: [
                  WebAboutMe(),
                  WebProject(),
                  WebResumee(),
                  WebContact(),
                ],
              ),
            ),
            WebEndingPage()
          ],
        ),
      ),
    );
  }
}

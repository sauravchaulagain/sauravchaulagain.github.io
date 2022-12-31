import 'package:flutter/material.dart';
import 'package:saurav_website/mobileview/mobile_homescreen.dart';

import 'mobile_about.dart';
import 'mobile_contact.dart_contact.dart';
import 'mobile_endingpage.dart';
import 'mobile_project.dart';
import 'mobile_resumee.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              size: 30,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 50),
            child: Image.asset('assets/logo.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MobileHomeScreen(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.aspectRatio * 30,
                  horizontal: size.aspectRatio * 70),
              child: Column(
                children: [
                  MobileAboutMe(),
                  MobileProject(),
                  MobileResumee(),
                  MobileContact(),
                ],
              ),
            ),
            MobileEndingPage()
          ],
        ),
      ),
    );
  }
}

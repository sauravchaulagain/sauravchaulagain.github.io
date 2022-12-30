import 'package:flutter/material.dart';
import 'package:saurav_website/mobileview/Mobile_projectpage.dart';
import 'package:saurav_website/mobileview/mobile_aboutpage.dart';
import 'package:saurav_website/mobileview/mobile_contact.dart';
import 'package:saurav_website/mobileview/mobile_resume.dart';

import 'mobile_homepage.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/istockphoto-1176012573-170667a.jpg'),
              fit: BoxFit.fitHeight,
              opacity: 120),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MobileHomePage(),
                MobileAboutPage(),
                MobileProjectPage(),
                MobileResume(),
                MobileContact(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

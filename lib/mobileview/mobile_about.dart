import 'package:flutter/material.dart';

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      child: Column(children: [
        SizedBox(height: size.height * 0.01),
        Text(
          "About me",
          style: TextStyle(
            fontFamily: 'hello',
            fontSize: size.aspectRatio * 70,
            fontWeight: FontWeight.bold,
            color: Color(0xFF005F60),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(size.aspectRatio * 15),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFD5901)),
                //  border: Border.all(color: Colors.white),
                color: Colors.deepPurple),
            child: Image.asset(
              'assets/code.gif',
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                'Developing With Passion While Exploring The World.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: size.aspectRatio * 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Hi there! My name is Saurav and I am a Flutter developer. I have a passion for creating beautiful and functional mobile apps using the Flutter framework. I am constantly learning and seeking new challenges to improve my skills and stay up-to-date with the latest technologies. I have worked on several projects where I was design and implement the front-end of the app using Flutter, as well as integrating with backend APIs and databases.\nI am excited to continue learning and growing as a developer, and I am eager to take on new challenges and contribute to the success of any team or project I am a part of.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: size.aspectRatio * 35,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

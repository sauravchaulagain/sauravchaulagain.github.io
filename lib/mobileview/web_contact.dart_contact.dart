import 'package:flutter/material.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: size.aspectRatio * 80,
              fontWeight: FontWeight.bold,
              color: Color(0xFF005F60),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            'If Not Now, When?\nLet’s Work Together!',
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: size.aspectRatio * 50,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            "I specialize in Flutter development and have a passion for creating intuitive and visually appealing apps. Contact me to learn more about my services and how I can help bring your app idea to function.",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: size.aspectRatio * 35,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/animat-chat-color.gif',
              height: size.height * 0.2,
            ),
          ),
          Text(
            "Let's talk with me!\nsauravchaulagain39@gmail.com",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: size.aspectRatio * 40,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

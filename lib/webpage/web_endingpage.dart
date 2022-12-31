import 'package:flutter/material.dart';

import '../pages/socialmedia.dart';

class WebEndingPage extends StatelessWidget {
  const WebEndingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: double.infinity,
      color: Color(0xFF249EA0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.aspectRatio * 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get In Touch',
              style: TextStyle(
                fontFamily: 'hello',
                fontSize: size.aspectRatio * 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.aspectRatio * 100),
              child: Text(
                "I’m looking for any new opportunities to learn and grow more, my inbox is always open. Whether you have a question or just want to say hi, I’ll try my best to get back to you!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: size.aspectRatio * 9,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Text(
              'Social Media',
              style: TextStyle(
                fontFamily: 'hello',
                fontSize: size.aspectRatio * 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SocialMediaHome(),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Name: Saurav Chaulagain',
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: size.aspectRatio * 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Contact: +977 9866556708',
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: size.aspectRatio * 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Email: sauravchaulagain39@gmail.com',
                  style: TextStyle(
                    fontFamily: 'hello',
                    fontSize: size.aspectRatio * 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

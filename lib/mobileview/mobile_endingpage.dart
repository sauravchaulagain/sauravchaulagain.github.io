import 'package:flutter/material.dart';

import '../pages/socialmedia.dart';

class MobileEndingPage extends StatelessWidget {
  const MobileEndingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.45,
      width: double.infinity,
      color: Color(0xFF249EA0),
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.01),
            Text(
              'Get In Touch',
              style: TextStyle(
                fontFamily: 'hello',
                fontSize: size.aspectRatio * 60,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: size.height * 0.005),
            Text(
              "I’m looking for any new opportunities to learn and grow more, my inbox is always open. Whether you have a question or just want to say hi, I’ll try my best to get back to you!",
              style: TextStyle(
                fontFamily: 'hello',
                fontSize: size.aspectRatio * 38,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Text(
              'Social Media',
              style: TextStyle(
                fontFamily: 'hello',
                fontSize: size.aspectRatio * 60,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialMediaHome(),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Name: \nSaurav Chaulagain',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: size.aspectRatio * 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Contact: \n+977 9866556708',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: size.aspectRatio * 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Email: \nsauravchaulaga\nin39@gmail.com',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: size.aspectRatio * 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

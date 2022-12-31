import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            width: size.width * 1,
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.aspectRatio * 60, right: size.aspectRatio * 60),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: size.height * 0.03),
                      Text(
                        "I'm Developer\nSaurav Chaulagain",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: size.aspectRatio * 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "I am a Flutter developer with a passion for creating beautiful and functional mobile applications. I have a strong understanding of mobile app development and am skilled in using the Flutter framework and Dart programming language.",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: size.aspectRatio * 30,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset('assets/abc.png'),
            ),
          )
        ],
      ),
    );
  }
}

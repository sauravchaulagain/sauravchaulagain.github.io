import 'package:flutter/material.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.9,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          Container(
            width: size.width * 0.56,
            child: Padding(
              padding: EdgeInsets.only(left: size.aspectRatio * 100),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "I'm Developer\nSaurav Chaulagain",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: size.aspectRatio * 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Text(
                        "I am a Flutter developer with a passion for creating beautiful and functional mobile applications. I have a strong understanding of mobile app development and am skilled in using the Flutter framework and Dart programming language.",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: size.aspectRatio * 9,
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                //  border: Border.all(color: Colors.white),
                                color: Color(0xff249EA0)),
                            height: size.height * 0.065,
                            width: size.width * 0.085,
                            child: Center(
                              child: Text(
                                'Learn More',
                                style: TextStyle(
                                  fontFamily: 'hello',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
          Expanded(
              child: Container(
            child: Image.asset('assets/abc.png'),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 1.3,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                //color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: 'Hello!\n',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        TextSpan(
                          text: 'I am Saurav\n',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 1.0),
                        ),
                        TextSpan(
                          text:
                              'I am a flutter developer highly motivateted to work as a developer Flutter Developer',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/abc.png',
              ),
            ),
          ],
        ));
  }
}

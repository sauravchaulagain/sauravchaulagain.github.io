import 'package:flutter/material.dart';

class WebContact extends StatelessWidget {
  const WebContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      child: Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Color(0xFF005F60),
            ),
          ),
          SizedBox(height: size.height * 0.1),
          Row(
            children: [
              Container(
                width: size.width * 0.4,
                child: Padding(
                  padding: EdgeInsets.only(right: size.aspectRatio * 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If Not Now, When?\nLet’s Work Together!',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Text(
                        "I specialize in Flutter development and have a passion for creating intuitive and visually appealing apps. Contact me to learn more about my services and how I can help bring your app idea to function.",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/animat-chat-color.gif',
                            height: size.height * 0.3,
                          ),
                          Expanded(
                            child: Text(
                              "Let's talk with me!\nsauravchaulagain39@gmail.com",
                              style: TextStyle(
                                fontFamily: 'hello',
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                height: size.height * 0.6,
                child: Text('ashhd'),
              ))
            ],
          ),
        ],
      ),
    );
  }
}

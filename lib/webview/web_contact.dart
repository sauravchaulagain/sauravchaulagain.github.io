import 'package:flutter/material.dart';
import 'package:saurav_website/pages/socialmedia.dart';

class WebContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 38,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Name:\n\nEmail:\n\nPhone:\n\nAddress:",
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 30),
              Text(
                "Saurav Chaulagain\n\nsauravchaulagain39@gmail.com\n\n+977 9866556708\n\nSuryabinayak-01,Bhaktapur",
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Social Media',
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(height: 20),
          SocialMediaHome()
        ],
      ),
    );
  }
}

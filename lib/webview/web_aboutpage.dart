import 'package:flutter/material.dart';

class WebAbout extends StatelessWidget {
  WebAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "I'm Saurav Chaulagain. I am passionate about Mobile application development (Flutter).  I'm constantly striving to learn new things and improve. I follow industry news; regularly tinker with new technologies, and read books and blogs to keep my skills current. I am currently studying Bachelor in Information Technology. I also have significant experience in UX/UI designing Mobile Applications. I have the ability to operate well both independently and in a team setting. I can stay on task and meet deadlines even when under pressure. \n\nI approach all my projects, regardless of the project size, with a kick-off discovery session to understand my client’s vision, the business objectives and what the user data is indicating. I’ve trained myself to make a quick usability test the moment I open a new website or an app, so this comes almost for free during our first meeting.",
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(width: size.width * 0.1),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Basic Information',
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
                        "Age:\n\nPhone:\n\nEmail:\n\nAddress:",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        "21\n\n+977 9866556708\n\nsauravchaulagain39@gmail.com\n\nSuryabinayak-01,Bhaktapur",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

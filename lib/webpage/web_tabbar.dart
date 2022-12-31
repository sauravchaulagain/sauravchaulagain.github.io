import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tabbarr extends StatelessWidget {
  const Tabbarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.11,
      child: Center(
        child: Row(
          children: [
            Expanded(child: Image.asset('assets/logo.png')),
            Row(
              children: [
                Container(
                  width: size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: size.width * 0.01),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'About',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Portfolio',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Contact',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: size.width * 0.02),
                  child: InkWell(
                    onTap: () async {
                      const url = 'https://github.com/sauravchaulagain';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //  border: Border.all(color: Colors.white),
                          color: Colors.blueAccent),
                      child: Center(
                          child: Text(
                        'Hire me!!',
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                    ),
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

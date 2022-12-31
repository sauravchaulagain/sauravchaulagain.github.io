import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class WebResumee extends StatelessWidget {
  const WebResumee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          top: size.aspectRatio * 50, bottom: size.aspectRatio * 30),
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: HoverCrossFadeWidget(
                  duration: Duration(milliseconds: 400),
                  firstChild: Container(
                    child: Image.asset(
                      'assets/CV_saurav.jpg',
                      height: size.height * 0.7,
                    ),
                  ),
                  secondChild: Container(
                    height: size.height * 1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/CV_saurav.jpg'),
                    )),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "RESUME",
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 38,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text(
                    'Take a look at my Resume .The resume is developed using PhotoShop.',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

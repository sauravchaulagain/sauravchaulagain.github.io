import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class MobileResumee extends StatelessWidget {
  const MobileResumee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Resume",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: size.aspectRatio * 60,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrange,
            ),
          ),
          Text(
            'Take a look at my Resume .The resume is developed using PhotoShop.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: size.aspectRatio * 30,
              fontWeight: FontWeight.w500,
              color: Colors.black26,
            ),
          ),
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
        ],
      ),
    );
  }
}

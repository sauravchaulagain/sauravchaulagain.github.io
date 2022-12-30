import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class MobileResume extends StatelessWidget {
  const MobileResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black26,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Center(
              child: HoverCrossFadeWidget(
                duration: Duration(milliseconds: 300),
                firstChild: Container(
                  child: Image.asset(
                    'assets/CV_saurav.jpg',
                    height: size.height * 0.87,
                  ),
                ),
                secondChild: Container(
                  height: size.height * 0.9,
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

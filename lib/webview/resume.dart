import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class WebResume extends StatelessWidget {
  const WebResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: HoverCrossFadeWidget(
                duration: Duration(milliseconds: 300),
                firstChild: Container(
                  child: Image.asset(
                    'assets/CV_saurav.jpg',
                    height: 500,
                  ),
                ),
                secondChild: Container(
                  height: 800,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/CV_saurav.jpg'),
                  )),
                ),
              ),
            ),
          ),
          Container(
            width: 600,
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
    );
  }
}

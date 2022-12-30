import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';

class WebProjectPage extends StatelessWidget {
  WebProjectPage({Key? key}) : super(key: key);

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1.8,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 58,
              fontWeight: FontWeight.w700,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Note: Images will redirect to source code.',
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              )),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () async {
                  const url = 'https://github.com/sauravchaulagain/Plants-Info';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  cursor: SystemMouseCursors.click,
                  duration: Duration(milliseconds: 300),
                  firstChild: Container(
                    child: Container(
                      height: size.height * 0.69,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/plantsinfo.jpg'),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  secondChild: Container(
                    height: size.height * 0.7,
                    width: size.width * 0.46,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/mobileapp.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    )),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Plants Info \nMobile Application',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 38,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://github.com/sauravchaulagain/website/tree/website_code';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  cursor: SystemMouseCursors.click,
                  duration: Duration(milliseconds: 300),
                  firstChild: Container(
                    height: size.height * 0.69,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/desktopapp.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  secondChild: Container(
                    height: size.height * 0.7,
                    width: size.width * 0.46,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/desktopapp.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    )),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Portfolio Website',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 38,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.08),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://github.com/sauravchaulagain/AALU_CROSS_flutter';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  cursor: SystemMouseCursors.click,
                  duration: Duration(milliseconds: 300),
                  firstChild: Container(
                    height: size.height * 0.69,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/aalucross.jpg'),
                      fit: BoxFit.cover,
                    )),
                  ),
                  secondChild: Container(
                    height: size.height * 0.7,
                    width: size.width * 0.46,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/gamedevelopment.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    )),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'TicTacToe Game',
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 38,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://github.com/sauravchaulagain/Flutter_Calculator';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: HoverCrossFadeWidget(
                  cursor: SystemMouseCursors.click,
                  duration: Duration(milliseconds: 300),
                  firstChild: Container(
                    height: size.height * 0.69,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/calculator.jpg'),
                      fit: BoxFit.cover,
                    )),
                  ),
                  secondChild: Container(
                    height: size.height * 0.7,
                    width: size.width * 0.46,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/mobileapp.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    )),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Calculator \n Flutter Application ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 38,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//   children: [
//
//     ),
//     SizedBox(height: 50),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/mobileapp.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/mobileapp.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'Plants Info \n Mobile Application',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/desktopapp.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/desktopapp.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'Portfolio Website',
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//       ],
//     ),
//     SizedBox(
//       height: 20,
//     ),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/gamedevelopment.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/gamedevelopment.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'TicTacToe Game',
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//         HoverCrossFadeWidget(
//           duration: Duration(milliseconds: 300),
//           firstChild: Image.asset(
//             'assets/mobileapp.jpg',
//             height: 400,
//           ),
//           secondChild: Container(
//             height: 400,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage('assets/mobileapp.jpg'),
//               fit: BoxFit.cover,
//               opacity: 0.2,
//             )),
//             child: Center(
//                 child: Text(
//               'Calculator \n Flutter Application ',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'hello',
//                 fontSize: 38,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//       ],
//     )
//   ],
// ),

// MouseRegion(
// onEnter: (f) {
// setState(() {
// isHover = true;
// });
// },
// onExit: (f) {
// setState(() {
// isHover = false;
// });
// },
// cursor: SystemMouseCursors.click,
// child: AnimatedContainer(
// duration: Duration(milliseconds: 200),
// height: isHover ? size.height * 0.5 : size.height * 0.44,
// child: Image.asset(
// 'assets/desktopapp.jpg',
// height: size.height * 0.44,
// ),
// ),
// ),

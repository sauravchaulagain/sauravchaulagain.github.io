import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';

class WebProject extends StatelessWidget {
  const WebProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.9,
      width: size.width * 1,
      child: Column(
        children: [
          Text(
            "Projects",
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Color(0xFF005F60),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: Catalog.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                mainAxisExtent: 280,
              ),
              itemBuilder: (context, index) {
                final item = Catalog.products[index];
                return GestureDetector(
                  onTap: () async {
                    final url = item.nav;
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    child: HoverCrossFadeWidget(
                      duration: Duration(milliseconds: 450),
                      firstChild: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                //  border: Border.all(color: Colors.white),
                                color: Colors.deepPurple,
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: AssetImage('assets/movieapp.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              color: Color(item.color).withOpacity(0.9),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    item.name,
                                    style: TextStyle(
                                      fontFamily: 'hello',
                                      fontSize: 38,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    item.type,
                                    style: TextStyle(
                                      fontFamily: 'hello',
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white38,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      secondChild: Container(
                        width: size.width * 1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          color: Color(0xff249EA0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(size.aspectRatio * 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item.desc,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'hello',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Container(
                                  height: size.height * 0.06,
                                  width: size.width * 0.08,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.white),
                                      color: Colors.yellow),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Github',
                                        style: TextStyle(
                                          fontFamily: 'hello',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 27,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Catalog {
  static final products = [
    detail(
        'PlantsInfo',
        "Flutter mobile app using local storage",
        0xFF203e6e,
        'abc',
        'Mobile App',
        'https://github.com/sauravchaulagain/Plants-Info/blob/master/README.md'),
    detail(
        "Movie App",
        "Flutter mobile app using api(http)",
        0xFF1aa6ab,
        "assets/",
        'Mobile App',
        "https://github.com/sauravchaulagain/MovieApp/blob/main/README.md"),
    detail(
        "AaluCross",
        "Mobile game using flutter.",
        0xFF5851c6,
        "assets/",
        'Mobile Game',
        "https://github.com/sauravchaulagain/AALU_CROSS_flutter/blob/master/README.md"),
    detail(
        "Website",
        "portfolio website using Flutter.",
        0xFF36393d,
        "assets/",
        'Web App',
        "https://github.com/sauravchaulagain/sauravchaulagain.github.io/blob/master/README.md"),
    detail(
        "Calculator",
        "Calculator mobile app using Flutter.",
        0xFFd1634f,
        "assets/",
        'Mobile App',
        "https://github.com/sauravchaulagain/Flutter_Calculator/blob/master/README.md"),
    detail("", "", 0xFF1e5233, "assets/", 'Mobile App', ""),
  ];
}

class detail {
  String name, image, desc, type, nav;
  int color;

  detail(
    this.name,
    this.desc,
    this.color,
    this.image,
    this.type,
    this.nav,
  );
}

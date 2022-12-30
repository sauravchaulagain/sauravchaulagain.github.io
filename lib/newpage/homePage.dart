import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.12,
              child: Center(
                child: Row(
                  children: [
                    Expanded(child: Image.asset('assets/Netflix_Logo_PMS.png')),
                    SizedBox(
                      width: size.width * 0.65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.9,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.jpg'),
                      fit: BoxFit.cover),
                  color: Colors.green),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.56,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "I'm Developer\nSaurav Chaulagain",
                                style: TextStyle(
                                  fontFamily: 'hello',
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                ),
                              ),
                              SizedBox(height: size.height * 0.04),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tellus tellus, consectetur ut est eu, cursus vulputate urna. Aliquam imperdiet, odio quis vehicula tempus, erat sem tincidunt est, at feugiat mi orci non dui. ",
                                style: TextStyle(
                                  fontFamily: 'hello',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: size.height * 0.1),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        //  border: Border.all(color: Colors.white),
                                        color: Color(0xff249EA0)),
                                    height: size.height * 0.065,
                                    width: size.width * 0.085,
                                    child: Center(
                                      child: Text(
                                        'Learn More',
                                        style: TextStyle(
                                          fontFamily: 'hello',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Image.asset('assets/abc.png'),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

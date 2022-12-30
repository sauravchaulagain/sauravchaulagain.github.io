import 'package:flutter/material.dart';
import 'package:saurav_website/webview/resume.dart';
import 'package:saurav_website/webview/web_aboutpage.dart';
import 'package:saurav_website/webview/web_contact.dart';
import 'package:saurav_website/webview/web_homepage.dart';
import 'package:saurav_website/webview/web_projectpage.dart';
import 'package:saurav_website/webview/web_tabbar.dart';

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/istockphoto-1176012573-170667a.jpg'),
                fit: BoxFit.cover,
                opacity: 150)),
        child: SingleChildScrollView(
          //controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                WebTabBar(),
                WebHomePage(),
                SizedBox(height: 20),
                WebAbout(),
                WebProjectPage(),
                WebResume(),
                SizedBox(height: 20),
                WebContact(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//static const _extraScrollSpeed = 30;
//final ScrollController _scrollController = ScrollController();
// WebPage({Key? key}) : super(key: key) {
//   _scrollController.addListener(() {
//     ScrollDirection scrollDirection =
//         _scrollController.position.userScrollDirection;
//     if (scrollDirection != ScrollDirection.idle) {
//       double scrollEnd = _scrollController.offset +
//           (scrollDirection == ScrollDirection.reverse
//               ? _extraScrollSpeed
//               : -_extraScrollSpeed);
//       scrollEnd = min(_scrollController.position.maxScrollExtent,
//           max(_scrollController.position.minScrollExtent, scrollEnd));
//       _scrollController.jumpTo(scrollEnd);
//     }
//   });
// }

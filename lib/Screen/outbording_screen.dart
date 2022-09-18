import 'Home_Page.dart';
import 'intro_page_1.dart';
import 'intro_page_2.dart';
import 'intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OutbordingScreen extends StatefulWidget {
  @override
  State<OutbordingScreen> createState() => _OutbordingScreenState();
}

class _OutbordingScreenState extends State<OutbordingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;
  //keep track of if we are on the last page or not__

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img_bg_1.webp',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.color,
                    ),
                  ),
                ),
              ),
              PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: [
                  IntroPage1(),
                ],
              ),
              Container(
                alignment: Alignment(0, 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Skip__

                    //dot indicator__
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) {
                    //           return HomePage();
                    //         },
                    //       ),
                    //     );
                    //   },
                    //   //done
                    //   child: Text(
                    //     'প্রবেশ করুন >',
                    //     style: TextStyle(
                    //       fontSize: 20,
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

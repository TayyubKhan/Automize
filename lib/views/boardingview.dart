import 'package:automise/Components/Rounded_Button.dart';
import 'package:automise/Components/boardingcomponent.dart';
import 'package:automise/const.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Routes/routes_name.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  _BoardingScreenState createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final int _numPages = 3;
  double _currentPage = 0;

  void goback() {
    setState(() {
      if (_currentPage > 0) {
        _currentPage--;
      }
    });
  }

  final List<BoardingPage> _boardingPages = [
    BoardingPage(
        title: 'Enjoy the Drive,',
        title2: 'Remove the Hassle.',
        imageAssetPath: 'assets/illustration1.png',
        onPressed: () {}),
    BoardingPage(
      title: 'Digitize your ownership ',
      imageAssetPath: 'assets/illustration2.png',
      title2: 'using the automize',
      onPressed: () {},
    ),
    BoardingPage(
      title: 'Designed by motoring',
      imageAssetPath: 'assets/illustration3.png',
      title2: 'enthusiast for the\n motoring Community',
      onPressed: () {},
    ),
  ];
  void goto() {
    setState(() {
      if (_currentPage < _numPages - 1) {
        _currentPage++;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
        print(_pageController.page!);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: _boardingPages.length,
              itemBuilder: (context, index) {
                return Container(
                  child: _boardingPages[_currentPage.toInt()],
                );
              },
            ),
            Positioned(
              bottom: 210,
              left: 0,
              right: 0,
              child: DotsIndicator(
                dotsCount: _numPages,
                position: _currentPage,
                decorator: DotsDecorator(
                  activeColor: primaryColor,
                  size: const Size.square(8),
                  activeSize: const Size(24, 8),
                  spacing: const EdgeInsets.all(4),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _currentPage == _numPages - 1
                    ? AppButton(
                        title: 'Get Started',
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RoutesName.bottomNavigation);
                        })
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RoutesName.bottomNavigation);
                              },
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                    fontSize: width * 0.047,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.withOpacity(0.4)),
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: goto,
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                        fontSize: width * 0.047,
                                        fontWeight: FontWeight.bold,
                                        color: secondaryColor),
                                  ),
                                ),
                                const Icon(
                                  CupertinoIcons.arrow_right,
                                  color: secondaryColor,
                                )
                              ],
                            )
                          ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

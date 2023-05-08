import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../Components/addcar1compo.dart';
import '../Routes/routes_name.dart';
import '../const.dart';

class AddCarView extends StatefulWidget {
  const AddCarView({Key? key}) : super(key: key);

  @override
  State<AddCarView> createState() => _AddCarViewState();
}

class _AddCarViewState extends State<AddCarView> {
  final PageController _pageController = PageController(initialPage: 1);
  bool view = false;
  final int _numPages = 2;
  double _currentPage = 0;

  void goback() {
    setState(() {
      if (_currentPage > 0) {
        _currentPage--;
      }
    });
  }

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
    final List<Widget> _boardingPages = [
      RegistrationComponent(
        onPressed: () {
          goto();
        },
      ),
      CarDetails(onPressed: () {
        Navigator.pushNamed(context, RoutesName.tabbar);
      })
    ];
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40,
        elevation: 0,
        title: Text(
          'Garage',
          style: TextStyle(color: Colors.black, fontSize: width * 0.06),
        ),
      ),
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
          _currentPage < 1
              ? Positioned(
                  top: 60,
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
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

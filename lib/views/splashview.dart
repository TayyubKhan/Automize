import 'dart:async';

import 'package:automise/Routes/routes_name.dart';
import 'package:automise/const.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.registration);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Container(
        color: greyColor,
        height: height * 1,
        width: width * 1,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Image(
              height: height * 0.35,
              width: width * 0.35,
              image: const AssetImage('assets/logo.png'),
            ),
            ColorFiltered(
              colorFilter: const ColorFilter.mode(greyColor, BlendMode.lighten),
              child: Container(
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/car.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

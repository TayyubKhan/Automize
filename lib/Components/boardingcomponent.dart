import 'package:automise/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardingPage extends StatefulWidget {
  final String title;
  final String title2;
  final String imageAssetPath;
  VoidCallback? onPressed;
  BoardingPage(
      {required this.title,
      required this.title2,
      required this.imageAssetPath,
      required this.onPressed});

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height * 0.1),
        Image.asset(
            height: height * 0.1, width: width * 0.3, 'assets/logodark.png'),
        SizedBox(height: height * 0.05),
        Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: width * 0.058,
              color: secondaryColor),
        ),
        Text(
          widget.title2,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: width * 0.058,
              fontWeight: FontWeight.w500,
              color: secondaryColor),
        ),
        SizedBox(height: height * 0.06),
        Image.asset(width: width * 0.75, widget.imageAssetPath),
        SizedBox(height: height * 0.27),
      ],
    );
  }
}

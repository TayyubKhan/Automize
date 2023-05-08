import 'package:flutter/material.dart';

import '../const.dart';

class AppButton extends StatelessWidget {
  String title;
  VoidCallback onPressed;
  AppButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height * 0.065,
        width: width * 0.9,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: width * 0.05),
        )),
      ),
    );
  }
}

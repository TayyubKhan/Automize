import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class AppGridView extends StatelessWidget {
  String title;
  String img;
  String description;
  String status;
  String date;
  AppGridView(
      {Key? key,
      required this.title,
      required this.status,
      required this.description,
      required this.date,
      required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.009,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage(img))),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Text(title,
                    style: TextStyle(
                        color: greyColor,
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500)),
                Text(description,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: width * 0.04,
                    )),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.alarm,
                      color: secondaryColor,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(status,
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: width * 0.04,
                            )),
                        Text(
                          date,
                          style: TextStyle(
                              color: greyColor, fontSize: width * 0.04),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class AppListView extends StatelessWidget {
  String title;
  String img;
  String description;
  String status;
  String date;
  AppListView(
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            SizedBox(
              width: width * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(height: height * 0.14, image: AssetImage(img))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: greyColor,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: height * 0.01,
                  ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(status,
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: width * 0.04,
                              )),
                          SizedBox(
                            width: width * 0.1,
                          ),
                          Text(
                            date,
                            style: const TextStyle(color: greyColor),
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
      ),
    );
    ;
  }
}

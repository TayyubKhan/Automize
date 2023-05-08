import 'dart:ui';

import 'package:automise/Components/listviewcomponenents.dart';
import 'package:automise/Model/Model.dart';
import 'package:automise/Routes/routes_name.dart';
import 'package:automise/Utilis.dart';
import 'package:automise/const.dart';
import 'package:flutter/material.dart';

import '../Components/gridviewcomponent.dart';

class GarageView extends StatefulWidget {
  const GarageView({Key? key}) : super(key: key);

  @override
  State<GarageView> createState() => _GarageViewState();
}

class _GarageViewState extends State<GarageView> {
  bool view = false;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Container(
      width: width * 1,
      height: height * 1,
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.015,
            ),
            Stack(children: [
              Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.09, 0.5, 0.8],
                        colors: [primaryColor, greyColor, Colors.grey]),
                    borderRadius: BorderRadius.circular(10)),
                width: width * 1,
                height: height * 0.16,
                child: ClipRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: BackdropFilter(
                    blendMode: BlendMode.luminosity,
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor, width: 2),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        radius: width * 0.13,
                        backgroundColor: const Color(0xffD9F1CE),
                        backgroundImage: const AssetImage('assets/av.png'),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Johnson Smith',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                              size: height * 0.019,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text('London, United Kingdom',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.019)),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            ImageIcon(
                                color: Colors.grey,
                                size: height * 0.019,
                                const AssetImage(service)),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text('5 Cars',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.019)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
            SizedBox(height: height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Cars',
                  style: TextStyle(color: greyColor, fontSize: width * 0.06),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          view = !view;
                        });
                      },
                      child: view == false
                          ? Icon(
                              Icons.grid_view,
                              size: width * 0.06,
                            )
                          : Icon(
                              Icons.list,
                              size: width * 0.06,
                            ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.addcar);
                          },
                          child: Icon(
                            Icons.add,
                            size: width * 0.06,
                          ),
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Expanded(
              child: view == false
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: height * 0.01,
                          mainAxisExtent: height * 0.32),
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                        return AppGridView(
                          title: item[index].title,
                          status: item[index].status,
                          description: item[index].description,
                          date: item[index].date,
                          img: item[index].img,
                        );
                      })
                  : ListView.builder(
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                        return AppListView(
                          title: item[index].title,
                          status: item[index].status,
                          description: item[index].description,
                          date: item[index].date,
                          img: item[index].img,
                        );
                      }),
            )
          ],
        ),
      ),
    );
  }
}

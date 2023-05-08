import 'dart:ui';

import 'package:automise/Routes/routes_name.dart';
import 'package:automise/Utilis.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class NewHistoryFileView extends StatefulWidget {
  const NewHistoryFileView({Key? key}) : super(key: key);

  @override
  State<NewHistoryFileView> createState() => _NewHistoryFileViewState();
}

class _NewHistoryFileViewState extends State<NewHistoryFileView> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.09, 0.5, 0.8],
                    colors: [primaryColor, greyColor, Colors.grey]),
                borderRadius: BorderRadius.circular(10)),
            width: width,
            height: height * 0.3,
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
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          const Text(
                            'New History File',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: width * 0.55,
                          ),
                          const Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Add to your car\'s digital history file',
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.04),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Please select an entry type to log to your car\'s  history file',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.04),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 1,
                  height: height * 0.82,
                  decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.circular(15)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.addservice);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xffef9595),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(service))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Service',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Invoice & records of your car',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xff42d2d9),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(maintenance))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Maintenance',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Invoice all ad hoc maintenance ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xfffa6ba7),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(modification))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Modification',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Photos,Videos,Documents & Invoices',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xff42daa2),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(restoration))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Restoration',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Photos,Documents & Invoices',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: width * 0.1,
                                        backgroundColor:
                                            const Color(0xff61aff8),
                                        child: const ImageIcon(
                                            color: Colors.white,
                                            AssetImage(admin)),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Admin',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'MOT,Reg,Tax,Logistics,Storage & Other Rec',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xff956ee7),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(insurance))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Insurance',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Policy, Documents & Relate Info',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xfff19764),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(history))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'History',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Photos,Documents & Showcasing Story',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xffeb6fe5),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(events))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Events',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Highlights & Memories of drivers & events',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: width * 0.4,
                                  height: height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          radius: width * 0.1,
                                          backgroundColor:
                                              const Color(0xffbad06a),
                                          child: const ImageIcon(
                                              color: Colors.white,
                                              AssetImage(others))),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'Other',
                                        style: TextStyle(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Any other documents or info related to car',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: width * 0.04,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

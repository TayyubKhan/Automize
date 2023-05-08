import 'package:automise/views/garageview.dart';
import 'package:automise/views/historyview.dart';
import 'package:automise/views/profileview.dart';
import 'package:automise/views/sharingview.dart';
import 'package:automise/views/taskview.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../const.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int selectedIndex = 0;
  static const List<Widget> widgets = [
    GarageView(),
    SharingView(),
    HistoryView(),
    TaskView(),
    ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: selectedIndex == 0
              ? const Text(
                  'Garage',
                  style: TextStyle(color: Colors.black),
                )
              : selectedIndex == 1
                  ? const Text(
                      'Share',
                      style: TextStyle(color: Colors.black),
                    )
                  : selectedIndex == 2
                      ? const Text(
                          'History',
                          style: TextStyle(color: Colors.black),
                        )
                      : selectedIndex == 3
                          ? const Text(
                              'Your Tasks',
                              style: TextStyle(color: Colors.black),
                            )
                          : const Text(
                              'Profile',
                              style: TextStyle(color: Colors.black),
                            )),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: GNav(
          style: GnavStyle.google,
          backgroundColor: greyColor,
          rippleColor: Colors.grey, // tab button ripple color when pressed
          hoverColor: greyColor, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 35, // tab button border
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 500), // tab animation duration
          gap: 2, // the tab button gap between icon and text
          color: Colors.grey, // unselected icon color
          activeColor: primaryColor, // selected icon and text color
          iconSize: width * 0.07,
          tabMargin: EdgeInsets.only(
              left: width * 0.02, top: height * 0.017, bottom: height * 0.017),
          // tab button icon size
          tabBackgroundColor:
              primaryColor.withOpacity(0.3), // selected tab background color
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          tabs: [
            GButton(
              leading: ImageIcon(
                const AssetImage('assets/home_tab_ic.png'),
                color: selectedIndex == 0 ? primaryColor : Colors.grey,
              ),
              icon: Icons.garage_sharp,
              text: 'Garage',
            ),
            GButton(
              leading: ImageIcon(
                const AssetImage(
                  'assets/Vector.png',
                ),
                color: selectedIndex == 1 ? primaryColor : Colors.grey,
              ),
              icon: Icons.share,
              text: 'Sharing',
            ),
            GButton(
              leading: ImageIcon(
                const AssetImage('assets/history_tab_ic.png'),
                color: selectedIndex == 2 ? primaryColor : Colors.grey,
              ),
              icon: Icons.history_edu_sharp,
              text: 'History',
            ),
            const GButton(
              icon: IconData(0xe800,
                  fontFamily: 'MyFlutterApp', fontPackage: null),
              text: 'Tasks',
            ),
            GButton(
              leading: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor, width: 2),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: width * 0.03,
                  backgroundColor: const Color(0xffD9F1CE),
                  backgroundImage: const AssetImage('assets/av.png'),
                ),
              ),
              icon: Icons.person,
            ),
          ],
          selectedIndex: selectedIndex,
        ),
      ),
      body: widgets.elementAt(selectedIndex),
    );
  }
}

import 'package:automise/const.dart';
import 'package:automise/views/OverViewView.dart';
import 'package:automise/views/TabbarShareView.dart';
import 'package:automise/views/TechnicalView.dart';
import 'package:automise/views/Transfer%20Screen.dart';
import 'package:automise/views/carhistoryview.dart';
import 'package:automise/views/galleryView.dart';
import 'package:automise/views/taskview.dart';
import 'package:flutter/material.dart';

class AppTabBarView extends StatefulWidget {
  @override
  _AppTabBarViewState createState() => _AppTabBarViewState();
}

class _AppTabBarViewState extends State<AppTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<bool> color = [true, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 1;
    final double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: height * 0.1,
        backgroundColor: Colors.white,
        title: Container(
          width: width,
          height: height * 0.15,
          color: Colors.white,
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                color: greyColor,
              ),
              Text(
                '2000 Nissan GTR R35',
                style: TextStyle(color: greyColor),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kTextTabBarHeight),
          child: Container(
            width: width,
            decoration: const BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TabBar(
                  onTap: (value) {
                    for (int i = 0; i < 7; i++) {
                      if (i != value) {
                        color[i] = false;
                      } else {
                        color[value] = true;
                      }
                    }
                    setState(() {});
                  },
                  labelColor: greyColor,
                  labelStyle: TextStyle(fontSize: width * 0.047),
                  splashBorderRadius: BorderRadius.circular(15),
                  unselectedLabelColor: greyColor,
                  indicator: ShapeDecoration(
                      color: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  controller: _tabController,
                  isScrollable: true,
                  tabs: [
                    Container(
                        decoration: BoxDecoration(
                            color: color[0] ? primaryColor : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * 0.24,
                        child: const Tab(text: 'OverView')),
                    Container(
                        decoration: BoxDecoration(
                            color: color[1] ? primaryColor : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * 0.24,
                        child: const Tab(text: 'Gallery')),
                    Container(
                        decoration: BoxDecoration(
                            color: color[2] ? primaryColor : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * 0.24,
                        child: const Tab(text: 'Technical')),
                    Container(
                        decoration: BoxDecoration(
                            color: color[3] ? primaryColor : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * 0.24,
                        child: const Tab(text: 'History')),
                    Container(
                        decoration: BoxDecoration(
                            color: color[4] ? primaryColor : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * 0.24,
                        child: const Tab(text: 'Tasks')),
                    Container(
                        decoration: BoxDecoration(
                            color: color[5] ? primaryColor : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * 0.24,
                        child: const Tab(text: 'Sharing')),
                    Container(
                        decoration: BoxDecoration(
                            color: color[6] ? primaryColor : Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: width * 0.24,
                        child: const Tab(text: 'Transfer')),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          // Home tab content
          OverViewView(),
          // Categories tab content
          GalleryView(),
          // Favorites tab content
          TechnicalView(),
          // Profile tab content
          CarHistoryView(),
          TaskView(),
          // Settings tab content
          TabBarSharingView(),
          TransferScreen()
        ],
      ),
    );
  }
}

import 'package:automise/Routes/routes_name.dart';
import 'package:automise/views/OverViewView.dart';
import 'package:automise/views/TabBarView.dart';
import 'package:automise/views/TabbarShareView.dart';
import 'package:automise/views/addcarView.dart';
import 'package:automise/views/addservice2view.dart';
import 'package:automise/views/addtaskview.dart';
import 'package:automise/views/boardingview.dart';
import 'package:automise/views/bottomnavigationbar.dart';
import 'package:automise/views/carhistoryview.dart';
import 'package:automise/views/galleryView.dart';
import 'package:automise/views/historyfileview.dart';
import 'package:automise/views/loginscreen.dart';
import 'package:automise/views/newhisotryfileview.dart';
import 'package:automise/views/registerScreen.dart';
import 'package:automise/views/sharingview.dart';
import 'package:automise/views/splashview.dart';
import 'package:automise/views/taskdetailsView.dart';
import 'package:flutter/material.dart';

import '../views/addservice.dart';
import '../views/sharewithothersView.dart';

class Routes {
  static Route<dynamic> Generate_Routes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());
      case RoutesName.registration:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegisterView());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.boarding:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BoardingScreen());
      case RoutesName.bottomNavigation:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AppBottomNavigationBar());
      case RoutesName.tabbar:
        return MaterialPageRoute(
            builder: (BuildContext context) => AppTabBarView());
      case RoutesName.addcar:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddCarView());
      case RoutesName.addservice:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddService());
      case RoutesName.addservice2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddService2());
      case RoutesName.addtask:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddTaskView());
      case RoutesName.carHistoryView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CarHistoryView());
      case RoutesName.gallery:
        return MaterialPageRoute(
            builder: (BuildContext context) => const GalleryView());
      case RoutesName.historyFile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HistoryFileView());
      case RoutesName.newhistoryfile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const NewHistoryFileView());
      case RoutesName.overview:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OverViewView());
      case RoutesName.sharewithothers:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ShareWithOthersView());
      case RoutesName.Sharing:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SharingView());
      case RoutesName.tabbarshare:
        return MaterialPageRoute(
            builder: (BuildContext context) => const TabBarSharingView());
      case RoutesName.taskdetails:
        return MaterialPageRoute(
            builder: (BuildContext context) => const TaskDetailView());
      case RoutesName.taskview:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddTaskView());
      case RoutesName.taskview2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddTaskView2());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('You are on the Wrong way'),
            ),
          );
        });
    }
  }
}

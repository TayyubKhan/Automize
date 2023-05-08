import 'package:flutter/material.dart';

class AppPovider with ChangeNotifier {
  List<String> _makeList = [];
  List<String> get makeList => _makeList;
  String selectMake = 'Make';
  List<bool> _check = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> get check => _check;
  void setCheck(bool value, int index) {
    _check[index] = value;
    notifyListeners();
  }

  bool checkreturn(int index) {
    return _check[index];
  }
}

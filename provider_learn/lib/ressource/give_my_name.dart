import 'package:flutter/material.dart';

class GiveMyName with ChangeNotifier {
  String _userName = 'User_Name';
  String get userName => _userName;
  void changeName(String name) {
    _userName = name;
    notifyListeners();
  }
}

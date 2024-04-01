import 'package:flutter/material.dart';
import 'package:flutter_learn/202/state_manage/state_manage_view.dart';

abstract class StateLearnViewModel extends State<StateManagementLearnView> {
  @override
  void initState() {
    super.initState();
  }

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }

  //void changeLoading(bool value){}

  bool isVisible = true;
  bool isOpacity = true;
}

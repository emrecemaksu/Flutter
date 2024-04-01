import 'package:flutter/material.dart';
import 'package:flutter_learn/202/state_manage/state_learn_view_model.dart';

class StateManagementLearnView extends StatefulWidget {
  const StateManagementLearnView({super.key});

  @override
  State<StateManagementLearnView> createState() => _StateManagementLearnViewState();
}

class _StateManagementLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      appBar: AppBar(
        backgroundColor: isVisible ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}

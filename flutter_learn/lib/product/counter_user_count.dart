import 'package:flutter/material.dart';

class CounterUserCount extends StatefulWidget {
  const CounterUserCount({super.key});

  @override
  State<CounterUserCount> createState() => _CounterUserCountState();
}

class _CounterUserCountState extends State<CounterUserCount> {
  int _userCount = 0;
  final String userCountTr = 'Kullanici Sayisi';
  void _updateCounter() {
    setState(() {
      ++_userCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text('$userCountTr $_userCount'),
    );
  }
}

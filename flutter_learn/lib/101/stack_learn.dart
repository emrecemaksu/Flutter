import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              color: Colors.blueAccent,
              height: 100,
            ),
          ),
          Positioned(
            right: 100,
            left: 0,
            top: 100,
            height: 50,
            child: Container(color: Colors.green),
          )
        ],
      ),
    );
  }
}

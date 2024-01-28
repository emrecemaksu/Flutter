import 'package:flutter/material.dart';

class DenemeLearn extends StatelessWidget {
  const DenemeLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(style: BorderStyle.solid),
                elevation: 5.0,
                padding: const EdgeInsets.only(
                    right: 50, left: 50, top: 10, bottom: 10),
                shape: const RoundedRectangleBorder(),
              ),
              onPressed: () {},
              child: const Text(
                'Food',
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgressIndicator()],
      ),
      body: const Column(
        children: [
          LinearProgressIndicator(),
          SizedBox(
            height: 50,
          ),
          Center(
            child: CenterCircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}

class CenterCircularProgressIndicator extends StatelessWidget {
  const CenterCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.black,
        value: 0.9,
        //color: Colors.black,
      ),
    );
  }
}

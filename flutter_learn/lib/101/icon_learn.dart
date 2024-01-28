import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.outlet_outlined,
            color: Theme.of(context).colorScheme.error,
            size: IconSize().iconSize,
          ),
        ),
      ]),
    );
  }
}

class IconSize {
  final double iconSize = 40;
}

class IconColors {
  final Color color = Colors.amberAccent;
}

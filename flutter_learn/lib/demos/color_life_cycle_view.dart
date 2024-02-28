import 'package:flutter/material.dart';
import 'package:flutter_learn/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: const Icon(Icons.cancel),
          onPressed: () {
            setState(() {
              color = Colors.purpleAccent;
            });
          },
        )
      ]),
      body: Column(children: [
        const Spacer(),
        Expanded(
          child: ColorDemosView(
            color: color,
          ),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({super.key});

  @override
  State<WidgetSizeEnumLearnView> createState() => _WidgetSizeEnumLearnState();
}

class _WidgetSizeEnumLearnState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSized.normalCardHeight.value(),
          color: Colors.green,
        ),
      ),
    );
  }
}

enum WidgetSized {
  normalCardHeight,
  circleProfileWidth,
}

extension WidgetSizeExtension on WidgetSized {
  double value() {
    switch (this) {
      case WidgetSized.normalCardHeight:
        return 30;
      case WidgetSized.circleProfileWidth:
        return 25;
    }
  }
}

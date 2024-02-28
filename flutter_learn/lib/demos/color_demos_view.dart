import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.color});
  final Color? color;
  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backGroundColor;
  @override
  void initState() {
    super.initState();
    _backGroundColor = widget.color ?? Colors.limeAccent;
  }

  void changeColor(Color color) {
    setState(() {
      _backGroundColor = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.color != _backGroundColor && widget.color != null) {
      changeColor(widget.color!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTab, items: const [
        BottomNavigationBarItem(
            icon: _BottomNavColorCont(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _BottomNavColorCont(
              color: Colors.blue,
            ),
            label: 'Blue'),
        BottomNavigationBarItem(
            icon: _BottomNavColorCont(
              color: Colors.green,
            ),
            label: 'Green'),
      ]),
    );
  }

  void _colorOnTab(int value) {
    if (value == _NaviColor.red.index) {
      changeColor(Colors.red);
    } else if (value == _NaviColor.blue.index) {
      changeColor(Colors.blue);
    } else if (value == _NaviColor.green.index) {
      changeColor(Colors.green);
    }
  }
}

enum _NaviColor { red, blue, green }

class _BottomNavColorCont extends StatelessWidget {
  const _BottomNavColorCont({required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}

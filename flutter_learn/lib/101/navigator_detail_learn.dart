import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({super.key, this.isOk = false});
  final bool isOk;
  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.back_hand,
            color: widget.isOk ? Colors.red : Colors.green,
          ),
          onPressed: () {
            Navigator.of(context).pop(!widget.isOk);
          },
          label: widget.isOk ? const Text('Red') : const Text('Kabul'),
        ),
      ),
    );
  }
}

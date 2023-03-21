import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Forpage()),
    );
  }
}

class Forpage extends StatelessWidget {
  const Forpage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return PageView(
      controller: pageController,
      children: const <Widget>[
        Center(child: Text('Sayfa 1')),
        Center(child: Text('Sayfa 2')),
        Center(child: Text('Sayfa 3'))
      ],
    );
  }
}

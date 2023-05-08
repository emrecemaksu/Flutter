/*
Ephemeral State sadece Widget içinde değer taşımada kullanılır.
Örneğin kullanıcı sayfa değiştirdi ve uygulamayı tekrar açıldığında ana sayfadan
başlamasını istyiyorsunuz. Bu durumda Ephemeral kullanabiliriz.
setState burada önemli nokta.
*/

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _index = 0;
  static const List<Widget> _widgetList = <Widget>[
    Text('Ana Sayfa'),
    Text('Zamanlayıcı')
  ];

  void _onTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ephemeral State'),
      ),
      body: Center(
        child: _widgetList.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Alfabe')
        ],
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}

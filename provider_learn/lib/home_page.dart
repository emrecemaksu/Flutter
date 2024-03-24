import 'package:flutter/material.dart';
import 'package:provider_learn/main_page.dart';
import 'package:provider_learn/say_page.dart';
import 'package:provider_learn/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider Learn'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ayarlar'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Say')
          ],
          currentIndex: selectedItem,
          onTap: (value) {
            setState(() {
              selectedItem = value;
            });
          },
          selectedItemColor: Colors.amber,
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              if (selectedItem == 0) {
                return const MainPage();
              } else if (selectedItem == 1) {
                return const SettingsPage();
              } else {
                return const CountMyValue();
              }
            },
          ),
        ));
  }
}

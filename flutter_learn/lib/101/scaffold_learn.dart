import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(),
      ),
      body: const Center(),
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 200,
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      /*
      bottomSheet: BottomSheet(onClosing: () {
        
      }, builder: (context) => const Text('Bottom Sheet'),),
      */
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: 'Ana Sayfa', icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Arama')
      ]),
    );
  }
}

/*
class AppText {
  static String appTitle = 'Scaffold Learn';
}
*/

class AppText extends Text {
  const AppText({super.key}) : super('Scaffold Learn');
}

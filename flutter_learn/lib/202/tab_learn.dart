import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with SingleTickerProviderStateMixin {
  final List<Tab> tabBar = [
    const Tab(
      child: Text('Kırmızı'),
    ),
    const Tab(
      child: Text('Mavi'),
    ),
  ];
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabBars.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_tabController.index == 0) {
              _tabController.animateTo(1);
            } else {
              _tabController.animateTo(0);
            }
          },
        ),
        bottomNavigationBar: BottomAppBar(
          //shape: const CircularNotchedRectangle(),
          child: TabBar(
            indicatorColor: Colors.black,
            tabs: _MyTabBars.values
                .map((e) => Tab(
                      child: Text(e.name),
                    ))
                .toList(),
            onTap: (value) {},
            controller: _tabController,
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: tabBar,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ));
  }
}

enum _MyTabBars { home, settings }

extension _MyTabBarsExtension on _MyTabBars {}

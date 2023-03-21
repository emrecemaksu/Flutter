import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final generatedList = List.generate(10, (index) => 'Item $index');
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverAppBar(
                pinned: true,
                //Bar büyüklüğü ayarı için
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Custom Scroll View'),
                ),
              ),
              SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                      //(context, index) => const MayWidget(),
                      (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9)],
                      child: Text('Index: $index'),
                    );
                  }, childCount: 20),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 4.0)),
              SliverFixedExtentList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.blue[100 * (index % 9)],
                      child: Text('Index: $index'),
                    );
                  }),
                  itemExtent: 50.0)
            ],
          ),
        ),
      ),
    );
  }
}

/*
class MayWidget extends StatelessWidget {
  const MayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.teal,
      child: const Text('Grid'),
    );
  }
}
*/
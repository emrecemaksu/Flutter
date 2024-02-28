import 'package:flutter/material.dart';

class CardLearnWidget extends StatelessWidget {
  const CardLearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          //Margin dıştan verilmiş
          //padding içten verilmiş
          margin: ProjectMargin.cardMargin,
          color: Theme.of(context).colorScheme.error,
          shape: const StadiumBorder(),
          child: const SizedBox(
            height: 100,
            width: 500,
            child: Center(child: Text('Ali')),
          ),
        ),
        const Card(
          color: Colors.amber,
          child: SizedBox(
            height: 100,
            width: 100,
          ),
        ),
        const _CustomCard(
          child: SizedBox(
            height: 100,
            width: 500,
            child: Center(
              child: Text('Alim'),
            ),
          ),
        )
      ]),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

//Borders
//StadiumBorder(), CircleBorder(), RoundedRectangleBorder()

class _CustomCard extends StatelessWidget {
  final Widget child;

  const _CustomCard({required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      //Margin dıştan verilmiş
      //padding içten verilmiş
      margin: ProjectMargin.cardMargin,
      color: Theme.of(context).colorScheme.error,
      //shape: const StadiumBorder(), Ana temadan aldık çünkü
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final double _cardWidth = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          flex: 4,
          child: Stack(alignment: Alignment.center, children: [
            Positioned.fill(
              bottom: _cardHeight / 2,
              child: RandomImage(),
            ),
            Positioned(
              width: _cardWidth,
              height: _cardHeight,
              bottom: 0,
              child: const StadiumCard(),
            )
          ]),
        ),
        const Spacer(
          flex: 6,
        ),
      ]),
    );
  }
}

class StadiumCard extends StatelessWidget {
  const StadiumCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.cyan,
      shape: StadiumBorder(),
    );
  }
}

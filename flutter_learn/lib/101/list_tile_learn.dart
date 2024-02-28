import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            child: ListTile(
              onTap: () {},
              //Olabildigince kendi paddinglerini vs kisitlar sikistirir.
              dense: true,
              title: RandomImage(),
              //title: const Text('My Card'),
              subtitle: const Text('How do you use your card.'),
              leading: const Icon(Icons.money),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
        )
      ]),
    );
  }
}

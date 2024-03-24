import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/ressource/counter.dart';

class CountMyValue extends StatelessWidget {
  const CountMyValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().decrement();
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(context.watch<Counter>().count.toString())],
        ),
      ),
    );
  }
}

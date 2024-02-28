import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/product/counter_user_count.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});
  //Disari ile haberlestigimiz kisim.
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _value = 0;

  void _updateValue(bool con) {
    if (con == true) {
      _value += 1;
    } else {
      _value -= 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _value.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          )),
          const Placeholder(),
          const CounterUserCount(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _increment(),
          const SizedBox(
            width: 5,
          ),
          _decrement()
        ],
      ),
    );
  }

  FloatingActionButton _decrement() {
    if (kDebugMode) {
      print('calisti');
    }
    return FloatingActionButton(
      onPressed: () {
        _updateValue(false);
      },
      child: const Icon(Icons.remove),
    );
  }

  FloatingActionButton _increment() {
    return FloatingActionButton(
      onPressed: () {
        _updateValue(true);
      },
      child: const Icon(Icons.add),
    );
  }
}

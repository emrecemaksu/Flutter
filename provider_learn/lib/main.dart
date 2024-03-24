import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/home_page.dart';
import 'package:provider_learn/ressource/counter.dart';
import 'package:provider_learn/ressource/give_my_name.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Counter(),
        ),
        ChangeNotifierProvider(
          create: (context) => GiveMyName(),
        )
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

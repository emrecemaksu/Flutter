//import 'package:base/bloc_counter/counter_page.dart';
//import 'package:base/bloc_counter/cubit/counter_cubit.dart';
import 'package:base/loginPage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      /*
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const CounterPage(),
      ),
      */
      home: LoginPage(),
    );
  }
}

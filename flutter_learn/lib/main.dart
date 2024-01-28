import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/custom_widget_learn.dart';
//import 'package:flutter_learn/101/deneme.dart';
//import 'package:flutter_learn/101/card_learn.dart';
//import 'package:flutter_learn/101/image_learn.dart';
//import 'package:flutter_learn/demos/note_demos_app.dart';
//import 'package:flutter_learn/101/color_learn.dart';
//import 'package:flutter_learn/101/padding_learn.dart';
//import 'package:flutter_learn/101/stateless_learn.dart';
//import 'package:flutter_learn/101/app_bar.dart';
//import 'package:flutter_learn/101/icon_learn.dart';
//import 'package:flutter_learn/101/button_learn.dart';
//import 'package:flutter_learn/101/container_sized_box_learn.dart';
//import 'package:flutter_learn/101/scaffold_learn.dart';
//import 'package:flutter_learn/101/text_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Cupertino stilinde de uygulamayı oluşturabiliriz.
    //Material app de olsa kullanabiliriz.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      /*
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      */
      home: const CustomWidgetLearn(),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  final int sayi;
  const MyHomePage({super.key, required this.title, required this.sayi});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [Text(widget.sayi.toString())],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        label: const Row(children: [Icon(Icons.add), Text('Add')]),
      ),
    );
  }
}
*/

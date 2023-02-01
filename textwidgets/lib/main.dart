import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widgets',
      theme: ThemeData.dark(),
      home: const AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widgets'),
      ),
      body: Center(
          child: SelectionArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Kopyalanabilir Yazı.',
              //Overflow Taşmayı kontrol etmek için kullanılır.
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            ),
            //Selection Altında Çalışır.
            SelectionContainer.disabled(child: Text('Kopyalanamaz Yazı.')),
            Text('Kopyalanabilir Yazı.')
          ],
        ),
      )),
    );
  }
}

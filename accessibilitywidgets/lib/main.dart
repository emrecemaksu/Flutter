//Kullandığınız widget’ların anlamını kodun içine yazmanızı sağlar.
//Bu widget 50 tane property’e sahiptir.
//Bu property’lerle ASO optimizasyonu yapmak mümkün olabilir.
//Ayrıca engellilerin uygulamayı kullanmasını kolaylaştırmak için kullanılır.
//https://ofizu.com/flutter/populer-flutter-widgetlari/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MergeSeman(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Accessibility'),
          ),
          body: Semantics(
            label: 'Burası Semantics Açıklaması',
            child: const Center(
              child: Text('Burası Merkeze Text Widget'),
            ),
          )),
    );
  }
}

//Direkt return Widgetı olarak da kullanabiliriz.

class ForSemantics extends StatelessWidget {
  const ForSemantics({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
        //Label açıklama için kullanılır.
        label: 'Burası Semantics Açıklaması',
        enabled: true,
        readOnly: true, //vs vs bir çok özellik var.
        //Child ile widget ekleyerek devam edebiliriz.
        child: const Scaffold(
          body: Center(
            child: Text('Burası Merkeze Text Widget'),
          ),
        ));
  }
}

//Merge Semantics yapısı ile de çoklu alt ağaç yapısı oluşturulabilir

class MergeSeman extends StatefulWidget {
  const MergeSeman({super.key});

  @override
  State<MergeSeman> createState() => _MergeSemanState();
}

class _MergeSemanState extends State<MergeSeman> {
  bool isChecked = false;
  var tik = 'hjkjhbbn';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MergeSemantics(
          child: Row(
            children: <Widget>[
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    if (isChecked = value!) {
                      tik = 'Tik Seçili';
                    } else {
                      tik = 'Tik Seçili Değil';
                    }
                  });
                },
              ),
              Text('Check Box => $tik')
            ],
          ),
        ),
      ),
    );
  }
}

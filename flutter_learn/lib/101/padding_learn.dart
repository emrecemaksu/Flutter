import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //! paddingi Column dan itibaren sar sürekli Padding vermek yararsız.
      //padding classı daha mantıklı
      //Proje genelinde sağ sol eşit padding almalı
      body: Padding(
        padding: ProjectPadding().pagePaddingVertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              //Container gibi bazı widgetları 
              //kendi içinde Padding var onu da kullanabilirsin
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20) + const EdgeInsets.symmetric(vertical: 10),
            child: const Text('Emre'),
          )
        ]),
      ),
    );
  }
}

class ProjectPadding {
  final pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);
}
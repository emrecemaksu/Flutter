import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            //Expanded Ekrana % seklinde responsive dagitir.
            Expanded(
              flex: 4,
              child: Row(children: [
                Expanded(
                  child: Container(color: Colors.cyan),
                ),
                Expanded(
                  child: Container(color: Colors.green),
                )
              ]),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.orange),
            ),
            //Sadece araya bosluk vermek icin kullanilir.
            const Spacer(
              flex: 2,
            ),
            const Expanded(
                flex: 2,
                child: Row(
                  //Ana mesafeyi düzenler. Widgetlar arasi Horizontal bosluk ayarlar.
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //Yukari ile olan mesafeyi ayarlar
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //Ortaya dogru hizalama yapar
                  mainAxisSize: MainAxisSize.max,
                  children: [Text('A1'), Text('A2'), Text('A3')],
                )),
            //Container a 200 verildikten sonra Expandedlar yüzde bölüsür.
            Container(
              color: Colors.deepPurple,
              width: MediaQuery.of(context).size.width,
              height: ProjectContainerSize.size,
              child: const Column(children: [
                SizedBox(
                  height: 20,
                ),
                Expanded(child: Text('dsagsdg')),
                Expanded(child: Text('dsagsdg')),
                Expanded(child: Text('dsagsdg')),
              ]),
            )
          ],
        ));
  }
}

class ProjectContainerSize {
  static const double size = 200;
}

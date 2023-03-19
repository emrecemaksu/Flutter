import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Absorbpointer Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              MyStatelessWidget(),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                    'Kırmızı butonda Absorbpointer Vardır. Ancak alttaki mavi/n butona Absorbpointer kullanılmadığı için basabilirsiniz.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 100.0,
          child: ElevatedButton(
            onPressed: () {},
            child: null,
          ),
        ),
        SizedBox(
          width: 100.0,
          height: 200.0,
          child: AbsorbPointer(
            child: ElevatedButton(
              onPressed: () {},
              child: null,
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ),
        )
      ],
    );
  }
}

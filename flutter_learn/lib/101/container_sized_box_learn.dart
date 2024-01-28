import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 200),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 8),
          ),
          Container(
            constraints: const BoxConstraints(
                //Max Min ile zayıf da olsa ekran yerleşimini dinamik ayarlayabiliyoruz.
                maxWidth: 150,
                minWidth: 50,
                maxHeight: 150,
                minHeight: 50),
            //Padding içeri
            padding: const EdgeInsets.all(10),
            //Margin dışarı
            margin: const EdgeInsets.all(10),
            decoration: ProjectBoxDecoration(),
            child: Text(
              'Emre' * 32,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}

//Bu bir kullanım
/*
class ProjectBoxDecoration {
  static var boxDecoration = BoxDecoration(
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      color: Colors.redAccent,
      boxShadow: const [
        BoxShadow(
            color: Colors.greenAccent, offset: Offset(0.1, 1), blurRadius: 12.0)
      ],
      border: Border.all(width: 5, color: Colors.white));
}
*/

//Bu da bir kullanım
class ProjectBoxDecoration extends BoxDecoration {
  ProjectBoxDecoration()
      : super(
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            color: Colors.redAccent,
            boxShadow: const [
              BoxShadow(
                  color: Colors.greenAccent,
                  offset: Offset(0.1, 1),
                  blurRadius: 12.0)
            ],
            border: Border.all(width: 5, color: Colors.white));
}

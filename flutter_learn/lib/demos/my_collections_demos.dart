import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late List<CollectionModel> _model;
  @override
  void initState() {
    _model = CollectionItems().items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility().paddingSymmetric,
        itemCount: _model.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _model[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.blue,
                child: Image.asset(
                  _model.imagePath,
                  fit: BoxFit.fill,
                ),
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text('Fiyat => ${_model.price.toString()}')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;
  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(8);
  final paddingSymmetric = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim', price: 50),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim2', price: 25),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim3', price: 25),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim4', price: 25),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim5', price: 25),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim6', price: 25),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim', price: 25),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim', price: 25),
      CollectionModel(imagePath: ProjectImages().hamburger, title: 'Indirim', price: 25),
    ];
  }
}

class ProjectImages {
  final String hamburger = 'assets/images/png/Burger.png';
}

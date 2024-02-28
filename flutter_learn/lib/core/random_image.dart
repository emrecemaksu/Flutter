import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RandomImage extends StatelessWidget {
  RandomImage({super.key, this.height = 100});
  final imageUrl = 'https://picsum.photos/200/300';
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}

import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String _linkPath =
      'https://img.freepik.com/premium-psd/books-with-apple-top-isolated-transparent-background_879541-969.jpg?w=2000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: 300,
              child: PngImage(
                name: ImageItems().appleWithBook,
              )),
          SizedBox(
            width: 200,
            height: 200,
            child: Image.network(
              _linkPath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.apple_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = 'applewithbooks.png';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameMethod,
      fit: BoxFit.cover,
    );
  }

  String get _nameMethod => 'assets/images/png/$name';
}

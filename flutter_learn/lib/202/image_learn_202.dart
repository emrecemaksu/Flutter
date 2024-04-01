import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePaths.burger.toWidget(height: 100),
    );
  }
}

enum ImagePaths { burger }

extension ImagePathsExtensions on ImagePaths {
  String path() {
    return 'assets/images/png/$name.png';
  }

  Widget toWidget({double height = 100}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}

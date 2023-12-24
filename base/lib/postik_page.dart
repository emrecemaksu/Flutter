//import 'package:base/postik_modal.dart';
import 'package:flutter/material.dart';

class PostikPage extends StatefulWidget {
  const PostikPage({super.key});

  @override
  State<PostikPage> createState() => _PostikPageState();
}

class _PostikPageState extends State<PostikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: const Center(
        child: PostikWidget(),
      ),
    );
  }
}

class PostikWidget extends StatefulWidget {
  const PostikWidget({super.key});

  @override
  State<PostikWidget> createState() => _PostikWidgetState();
}

class _PostikWidgetState extends State<PostikWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

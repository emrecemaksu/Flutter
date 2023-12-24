import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
//import 'package:http/http.dart' as http;

import 'package:base/posts_modals.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Future<List<Posts>> postFuture = getPosts();
  static Future<List<Posts>> getPosts() async {
    //const url = 'https://jsonplaceholder.typicode.com/posts';
    //final response = await http.get(Uri.parse(url));
    final response = await rootBundle.loadString('assets/posts.json');
    //final body = json.decode(response.body);
    final body = json.decode(response);
    if (kDebugMode) {
      print('emre');
      print(body.toString());
      print('emre');
    }
    return body.map<Posts>(Posts.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: Center(
          child: FutureBuilder<List<Posts>>(
        future: postFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final posts = snapshot.data!;
            return postsWidget(posts);
          } else {
            return const Text('No Data');
          }
        },
      )),
    );
  }

  Widget postsWidget(List<Posts> posts) => ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            child: ListTile(
              title: Text(post.title.toString()),
              subtitle: Text(post.body.toString()),
            ),
          );
        },
      );
}

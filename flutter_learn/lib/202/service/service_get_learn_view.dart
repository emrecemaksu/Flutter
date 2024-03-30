import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/202/service/comments_learn_view.dart';
import 'package:flutter_learn/202/service/post_model.dart';
import 'package:flutter_learn/202/service/post_service.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({super.key});

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  bool _isLoad = true;
  late final Dio _networkManager;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  late final IPostInterface _postService;
  void _changeLoading() {
    setState(() {
      _isLoad = !_isLoad;
    });
  }

  List<PostModel>? _items;
  Future<void> fetchPostItems() async {
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        _items = datas.map((e) => PostModel.fromJson(e)).toList();
        _changeLoading();
      }
    } else {
      if (kDebugMode) {
        print('başarısız');
      }
    }
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

  @override
  void initState() {
    super.initState();
    fetchPostItems();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
    _postService = PostService();
    fetchPostItemsAdvance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoad ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: _items == null
          ? const Placeholder()
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: _items?.length ?? 0,
              itemBuilder: (context, index) {
                return _PostCard(model: _items?[index]);
              },
            ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    required PostModel? model,
  }) : _items = model;

  final PostModel? _items;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CommentsLearnView(
                  postId: _items?.id,
                ),
              ));
        },
        title: Text(
          _items?.title ?? '',
        ),
        subtitle: Text(_items?.body ?? ''),
      ),
    );
  }
}

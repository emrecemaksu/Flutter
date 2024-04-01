// ignore_for_file: unused_field

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/202/service/post_model.dart';

class ServicePostLearnView extends StatefulWidget {
  const ServicePostLearnView({super.key});

  @override
  State<ServicePostLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServicePostLearnView> {
  bool _isLoad = false;
  late final Dio _networkManager;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  void _changeLoading() {
    setState(() {
      _isLoad = !_isLoad;
    });
  }

  List<PostModel>? _items;
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  Future<void> _update(PostModel postModel) async {
    _changeLoading();
    final response = await _networkManager.post('posts', data: postModel);
    if (response.statusCode == HttpStatus.created) {
      if (kDebugMode) {
        print('201 Add döndü');
      }
    }
    _changeLoading();
  }

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl, contentType: Headers.jsonContentType));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoad ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: _textController,
            textInputAction: TextInputAction.next,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Body'),
            controller: _bodyController,
            textInputAction: TextInputAction.next,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Id Gir'),
            controller: _userIdController,
            textInputAction: TextInputAction.next,
          ),
          TextButton(
            //Yüklenme anında post işleminin gerçekleşmemesi için engelledik.
            onPressed: _isLoad
                ? null
                : () {
                    if (_textController.text.isNotEmpty &&
                        _bodyController.text.isNotEmpty &&
                        _userIdController.text.isNotEmpty) {
                      final model = PostModel(
                          title: _textController.text,
                          body: _bodyController.text,
                          userId: int.tryParse(_userIdController.text));
                      _update(model);
                    }
                  },
            child: const Text('Ekle'),
          )
        ],
      ),
    );
  }
}
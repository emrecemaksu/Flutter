import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_learn/202/service/comments_model.dart';
import 'package:flutter_learn/202/service/post_model.dart';

abstract class IPostInterface {
  Future<bool> addItemToService(PostModel postModel);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<CommentsModel>?> fetchSpesificPostItems(int postId);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(int id);
}

class PostService implements IPostInterface {
  late final Dio _networkManager;
  PostService()
      : _networkManager =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/', contentType: Headers.jsonContentType));

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    final response = await _networkManager.get(_PostServicePath.posts.name);
    try {
      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;
        if (datas is List) {
          return datas.map((e) => PostModel.fromJson(e)).toList();
        } else {
          return null;
        }
      }
    } on DioException catch (error) {
      ShowDebug.dioError(error, this);
    }
    return null;
  }

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response = await _networkManager.post(_PostServicePath.posts.name, data: postModel);
      return response.statusCode == HttpStatus.created;
    } on DioException catch (e) {
      ShowDebug.dioError(e, this);
    }
    return false;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response = await _networkManager.put('${_PostServicePath.posts.name}/$id', data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (e) {
      ShowDebug.dioError(e, this);
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _networkManager.delete('${_PostServicePath.posts.name}/$id');
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (e) {
      ShowDebug.dioError(e, this);
    }
    return false;
  }

  @override
  Future<List<CommentsModel>?> fetchSpesificPostItems(int postId) async {
    try {
      final response = await _networkManager
          .get(_PostServicePath.comments.name, queryParameters: {_PostQueryPats.postId.name: postId});
      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;
        if (datas is List) {
          return datas.map((e) => CommentsModel.fromJson(e)).toList();
        } else {
          return null;
        }
      }
    } on DioException catch (error) {
      ShowDebug.dioError(error, this);
    }
    return null;
  }
}

enum _PostServicePath { posts, comments }

enum _PostQueryPats { postId }

class ShowDebug {
  static void dioError<T>(DioException exception, T type) {
    if (kDebugMode) {
      print(exception.message);
      print(type);
    }
  }
}

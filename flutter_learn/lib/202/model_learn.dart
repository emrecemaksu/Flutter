// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_field
import 'package:flutter/foundation.dart';

class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.userId, this.id, this.title, this.body});
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4({required this.userId, required this.id, required this.title, required this.body});
}

class PostModel5 {
  final int _userId;
  int get userId => _userId;
  set userId(int value) => _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5({required int userId, required int id, required String title, required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({required int userId, required int id, required String title, required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel7({int userId = 0, int id = 0, String title = '', String body = ''}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;
  void updateBody(String? body) {
    if (body != null && body.isNotEmpty) {
      body = body;
    } else {
      if (kDebugMode) {
        print('Data is Empty');
      }
    }
  }

  PostModel8({this.userId, this.id, this.title, this.body});
  //Copy with obje varken yeni obje ile tanımladığımız değişkeni içine alıyor.
  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}

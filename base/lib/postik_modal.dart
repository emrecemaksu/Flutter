class PostikModal {
  int? id;
  int? userId;
  String? title;
  String? body;

  PostikModal({this.id, this.userId, this.title, this.body});

  PostikModal.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
/*
  static PostikModal getPostModal(json) => PostikModal(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body']);
*/
}

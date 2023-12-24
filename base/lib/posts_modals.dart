class Posts {
  final int? userID;
  final int? id;
  final String? body;
  final String? title;

  Posts({this.userID, this.id, this.title, this.body});

  static Posts fromJson(json) => Posts(
    userID: json['userId'],
    id: json['id'],
    title: json['title'],
    body: json['body']
  );
}

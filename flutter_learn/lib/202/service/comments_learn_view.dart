import 'package:flutter/material.dart';
import 'package:flutter_learn/202/service/comments_model.dart';
import 'package:flutter_learn/202/service/post_service.dart';

class CommentsLearnView extends StatefulWidget {
  const CommentsLearnView({super.key, required this.postId});
  final int? postId;

  @override
  State<CommentsLearnView> createState() => _CommentsLearnViewState();
}

class _CommentsLearnViewState extends State<CommentsLearnView> {
  late final IPostInterface postService;
  List<CommentsModel>? _commentsItem;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  void fetchItemsWithId(int postId) async {
    _changeLoading();
    _commentsItem = await postService.fetchSpesificPostItems(postId);
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _commentsItem?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(child: Text(_commentsItem?[index].email ?? ''),);
        },
      ),
    );
  }
}

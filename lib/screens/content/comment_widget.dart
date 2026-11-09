import 'package:flutter/material.dart';
import '../home_screen/models/comment_model.dart';

class CommentWidget extends StatelessWidget {
  final CommentModel comment;

  const CommentWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.person)),
      title: Text(comment.author),
      subtitle: Text(comment.text),
    );
  }
}

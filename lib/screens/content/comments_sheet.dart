import 'package:flutter/material.dart';
import '../home_screen/models/comment_model.dart';
import '../home_screen/models/post_model.dart';
import 'comment_widget.dart';

class CommentsSheet extends StatefulWidget {
  final PostModel post;
  const CommentsSheet({super.key, required this.post});

  @override
  State<CommentsSheet> createState() => _CommentsSheetState();
}

class _CommentsSheetState extends State<CommentsSheet> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void addComment() {
    final text = controller.text.trim();
    if (text.isEmpty) return;
    setState(() {
      widget.post.addComment(CommentModel(author: 'Я', text: text));
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text('Комментарии'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.post.comments.length,
                  itemBuilder: (context, index) =>
                      CommentWidget(comment: widget.post.comments[index]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        decoration: const InputDecoration(
                          hintText: 'Написать комментарий',
                        ),
                        onSubmitted: (_) => addComment(),
                      ),
                    ),
                    IconButton(
                      onPressed: addComment,
                      icon: const Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

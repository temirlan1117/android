import 'comment_model.dart';

class PostModel {
  final String? imageUrl;
  final String? imageAsset;
  int? likeCount;
  final List<CommentModel> comments;
  int get commentCount => comments.length;
  final String? description;

  PostModel({
    this.imageUrl,
    this.imageAsset,
    this.likeCount,
    List<CommentModel>? comments,
    this.description,
  }) : comments = comments ?? [];

  void addLike(int newCount) {
    // This method should ideally update the like count in a state management solution
    likeCount = newCount;
  }

  void addComment(CommentModel comment) {
    comments.add(comment);
  }
}

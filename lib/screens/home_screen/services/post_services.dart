import 'package:android_dev/screens/home_screen/models/post_model.dart';
import '../models/comment_model.dart';
import '../models/story_model.dart';
import '../data/posts_data.dart';

class PostServices {
  final List<PostModel> posts = [];

  final List<StoryModel> stories = [
    StoryModel(
      name: 'Айбек',
      imageUrl: 'https://picsum.photos/seed/story1/100',
    ),
    StoryModel(
      name: 'Алина',
      imageUrl: 'https://picsum.photos/seed/story2/100',
    ),
    StoryModel(
      name: 'Бекзат',
      imageUrl: 'https://picsum.photos/seed/story3/100',
    ),
    StoryModel(
      name: 'Амина',
      imageUrl: 'https://picsum.photos/seed/story4/100',
    ),
    StoryModel(
      name: 'Данияр',
      imageUrl: 'https://picsum.photos/seed/story5/100',
    ),
    StoryModel(
      name: 'Асель',
      imageUrl: 'https://picsum.photos/seed/story6/100',
    ),
  ];

  PostServices() {
    batchAddPosts(createPosts());
  }

  void addPost(PostModel post) {
    posts.add(post);
  }

  void likePost(PostModel post) {
    post.addLike((post.likeCount ?? 0) + 1);
  }

  void commentOnPost(PostModel post, CommentModel comment) {
    post.addComment(comment);
  }

  void batchAddPosts(List<PostModel> newPosts) {
    posts.addAll(newPosts);
  }
}

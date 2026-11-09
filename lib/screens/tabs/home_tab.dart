import 'package:flutter/material.dart';
import '../content/post_widget.dart';
import '../content/story_widget.dart';
import '../home_screen/services/post_services.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final PostServices postServices = PostServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('Instagram')),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: postServices.stories.length,
              itemBuilder: (context, index) =>
                  StoryWidget(story: postServices.stories[index]),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: postServices.posts.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(4),
                child: PostWidget(post: postServices.posts[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

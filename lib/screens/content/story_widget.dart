import 'package:flutter/material.dart';
import '../home_screen/models/story_model.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel story;

  const StoryWidget({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            child: ClipOval(
              child: Image.network(
                story.imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.person),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(story.name, maxLines: 1, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = [
      StoryItem.inlineImage(
        NetworkImage(
            'https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg'),
      ),
      StoryItem.inlineImage(
        NetworkImage(
            'https://images.unsplash.com/photo-1611657365907-1ca5d9799f59?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vZCUyMHBvcnRyYWl0fGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80'),
      ),
      StoryItem.inlineImage(
        NetworkImage(
            'https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg'),
      ),
    ]; // your list of stories
    return Scaffold(
      backgroundColor: Colors.black,
      body: StoryView(
        storyItems,
        inline: true,
        progressPosition: ProgressPosition.top,
        repeat: false,
        onComplete: () => Navigator.of(context).pop(),
      ),
    );
  }
}

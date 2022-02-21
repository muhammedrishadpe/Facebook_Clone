import 'package:flutter/material.dart';
import '../assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
              labelText: 'Add To Story',
              story: rishad,
              avatar: rishad,
              createStoryStatus: true),
          StoryCard(
            labelText: 'Emma',
            story: blackAndWhite,
            avatar: emma,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Noah',
            story: fashon,
            avatar: noah,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Elijah',
            story: hand,
            avatar: elijah,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Ava',
            story: photography,
            avatar: ava,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Liam',
            story: model,
            avatar: liam,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Ava',
            story: photography,
            avatar: ava,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;

  StoryCard({
    @required this.labelText,
    @required this.story,
    @required this.avatar,
    @required this.createStoryStatus = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(rishad),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: CircularButton(
              buttonIcon: Icons.add,
              buttonAction: () {
                print("Create new stroy");
              },
              iconColor: Colors.blue,
            ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                "Add to Story",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}

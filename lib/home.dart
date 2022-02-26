import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/sections/suggestionSection.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';

import 'widgets/circularButton.dart';
import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget thicDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print(' search screen appears');
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print(' massenger screen appears');
              },
            ),
          ],
        ),
        body: ListView(children: <Widget>[
          StatusSection(),
          thinDivider,
          HeaderButtonSection(
            buttonOne: headerButton(
              ButtonText: "Live",
              ButtonIcon: Icons.video_call,
              buttonColor: Colors.red,
              buttonAction: () {
                print("Go Live!!");
              },
            ),
            buttonTwo: headerButton(
              ButtonText: "Photo",
              ButtonIcon: Icons.photo_library,
              buttonColor: Colors.green,
              buttonAction: () {
                print("Take Photo!");
              },
            ),
            buttonThree: headerButton(
              ButtonText: "Room",
              ButtonIcon: Icons.video_call,
              buttonColor: Colors.purple,
              buttonAction: () {
                print("Create Room!");
              },
            ),
          ),
          thicDivider,
          RoomSection(),
          thicDivider,
          StorySection(),
          thicDivider,
          PostCard(
            name: "Olivia",
            avatar: olivia,
            publishedAt: "5h",
            postTitle: "A better version of me.",
            postImage: olivia,
            showBluwTick: true,
            likeCount: "10K",
            shareCount: "1K",
            commentCount: "2K",
          ),
          thicDivider,
          PostCard(
            name: "Emma",
            avatar: emma,
            publishedAt: "1 day ago",
            postTitle: "",
            postImage: fashon,
            showBluwTick: true,
            likeCount: "25K",
            shareCount: "4K",
            commentCount: "6K",
          ),
          thicDivider,
          PostCard(
            name: "Noah",
            avatar: noah,
            publishedAt: "1h",
            postTitle: NoahTitle,
            postImage: hand,
            showBluwTick: false,
            likeCount: "56",
            shareCount: "",
            commentCount: "2",
          ),
          thicDivider,
          SuggestionSection(),
          thicDivider,
          PostCard(
            name: "Elijah",
            avatar: elijah,
            publishedAt: "Just now",
            postTitle: "",
            postImage: photography,
            showBluwTick: false,
            likeCount: "",
            shareCount: "",
            commentCount: "",
          ),
          thicDivider,
          PostCard(
            name: "Ava",
            avatar: ava,
            publishedAt: "2 days ago",
            postTitle: "'m an original and that's perfection in itself.",
            postImage: travel,
            showBluwTick: true,
            likeCount: "85K",
            shareCount: "25K",
            commentCount: "56K",
          ),
          thicDivider,
          PostCard(
            name: "Liam",
            avatar: liam,
            publishedAt: "3h",
            postTitle: "",
            postImage: model,
            showBluwTick: false,
            likeCount: "389",
            shareCount: "1",
            commentCount: "50",
          ),
        ]),
      ),
    );
  }
}

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
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
          HeaderButtonSection(),
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
          ),
        ]),
      ),
    );
  }
}

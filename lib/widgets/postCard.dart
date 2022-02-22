import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;

  PostCard({
    @required this.avatar,
    @required this.name,
    @required this.publishedAt,
    @required this.postTitle,
    @required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCardHeader(),
          titleSection(),
          imageSection(),
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(
        postImage,
      ),
    );
  }

  Widget titleSection() {
    return Container(
        child: Text(
      postTitle == null ? "" : postTitle,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    ));
  }

  Widget PostCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(children: [
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        BlueTick(),
      ]),
      subtitle: Row(
        children: [
          Text(
            publishedAt == null ? "" : publishedAt,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("Open More Menu");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}

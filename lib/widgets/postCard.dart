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
  final bool showBluwTick;

  PostCard({
    @required this.avatar,
    @required this.name,
    @required this.publishedAt,
    @required this.postTitle,
    @required this.postImage,
    this.showBluwTick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                // Like label
                displayText(label: "20K"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                // Comment & share
                displayText(
                  label: "1K",
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "500"),
                displayText(label: "Shares"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({@required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
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
        padding: EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
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
        showBluwTick ? BlueTick() : SizedBox(),
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

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          createRoomButton(),
          Avatar(
            displayImage: olivia,
          ),
          Avatar(
            displayImage: emma,
          ),
          Avatar(
            displayImage: noah,
          ),
          Avatar(
            displayImage: elijah,
          ),
          Avatar(
            displayImage: ava,
          ),
          Avatar(
            displayImage: liam,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return OutlineButton.icon(
      shape: StadiumBorder(),
      onPressed: () {
        print("Create a chat room");
      },
      icon: Icon(
        Icons.video_camera_front_sharp,
        color: Colors.purple,
      ),
      label: Text(
        "Create \nRoom ",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      borderSide: BorderSide(color: Colors.blue[100], width: 2),
    );
  }
}

import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    @required String ButtonText,
    @required IconData ButtonIcon,
    @required Color buttonColor,
    @required Function buttonAction,
  }) {
    return FlatButton.icon(
      onPressed: () {
        buttonAction;
      },
      icon: Icon(
        ButtonIcon,
        color: buttonColor,
      ),
      label: Text(ButtonText),
    );
  }

  @override
  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey,
  );

  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          headerButton(
            ButtonText: 'live',
            ButtonIcon: Icons.video_call,
            buttonColor: Colors.red,
            buttonAction: () {
              print("Go Live");
            },
          ),
          verticalDivider,
          headerButton(
            ButtonText: 'Photo',
            ButtonIcon: Icons.photo_library,
            buttonColor: Colors.green,
            buttonAction: () {
              print("Go Album");
            },
          ),
          verticalDivider,
          headerButton(
            ButtonText: 'Room',
            ButtonIcon: Icons.message,
            buttonColor: Colors.blue,
            buttonAction: () {
              print("Go Room");
            },
          ),
        ],
      ),
    );
  }
}

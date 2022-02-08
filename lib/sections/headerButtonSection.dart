import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({Key key}) : super(key: key);

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
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          headerButton(
            ButtonText: 'live',
            ButtonIcon: Icons.video_call,
            buttonColor: Colors.red,
            buttonAction: () {
              print("Go Live");
            },
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          headerButton(
            ButtonText: 'Photo',
            ButtonIcon: Icons.photo,
            buttonColor: Colors.green,
            buttonAction: () {
              print("Go Album");
            },
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
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

import 'package:facebook_ui/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;

  SuggestionCard({
    @required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }
}

Widget suggestionDetails() {
  return Positioned(
    bottom: 0,
    right: 0,
    left: 0,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.grey[300],
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      height: 140,
      child: Column(
        children: [
          ListTile(
            title: Text("Rishal"),
            subtitle: Text("4 Mutual friends"),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconButton(
                  buttonAction: () {
                    print("Request friendship");
                  },
                  buttonIcon: Icons.account_box,
                  buttonColor: Colors.blue[700],
                  buttonTextColor: Colors.white,
                  buttonIconColor: Colors.white,
                  buttonText: "Add Friend",
                ),
                blankButton(
                    buttonAction: () {
                      print("Remove suggestion!!");
                    },
                    ButtonText: "Remove",
                    buttonColor: Colors.grey[300],
                    buttonTextColor: Colors.black),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget blankButton({
  @required void Function() buttonAction,
  @required String ButtonText,
  @required Color buttonColor,
  @required Color buttonTextColor,
}) {
  return FlatButton(
    onPressed: buttonAction,
    color: buttonColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Text(
      ButtonText,
      style: TextStyle(
        color: buttonTextColor,
      ),
    ),
  );
}

Widget iconButton({
  @required void Function() buttonAction,
  @required IconData buttonIcon,
  @required Color buttonColor,
  @required Color buttonTextColor,
  @required Color buttonIconColor,
  @required String buttonText,
}) {
  return FlatButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonIconColor,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
    ),
    label: Text(
      buttonText,
      style: TextStyle(color: buttonTextColor),
    ),
    color: buttonColor,
  );
}

Widget suggestionImage() {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Image.asset(
        noah,
        height: 250,
        fit: BoxFit.cover,
      ),
    ),
  );
}

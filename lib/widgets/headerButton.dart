import 'package:flutter/material.dart';

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

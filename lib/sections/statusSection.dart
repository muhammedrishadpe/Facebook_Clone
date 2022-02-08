import 'package:flutter/material.dart';

import '../assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          rishad,
          width: 50,
          height: 50,
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}

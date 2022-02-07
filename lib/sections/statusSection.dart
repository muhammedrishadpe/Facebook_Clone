import 'package:flutter/material.dart';

import '../assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          child: Image.asset(
        rishad,
        width: 50,
        height: 50,
      )),
    );
  }
}

import 'package:flutter/material.dart';

import './widgets/appBarButton.dart';
import 'package:facebook_ui/sections/statusSection.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print(' search screen appears');
              },
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print(' massenger screen appears');
              },
            ),
          ],
        ),
        body: ListView(children: <Widget>[
          StatusSection(),
        ]),
      ),
    );
  }
}

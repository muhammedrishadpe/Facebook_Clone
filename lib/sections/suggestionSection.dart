import 'package:facebook_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(children: [
        ListTile(
          title: Text("People You May Know"),
          trailing: IconButton(
            onPressed: () {
              print("More Clicked!");
            },
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey[700],
            ),
          ),
        ),
        Container(
          height: 340,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCard(),
            ],
          ),
        ),
      ]),
    );
  }
}

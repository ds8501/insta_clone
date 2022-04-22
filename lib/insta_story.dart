import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final stories = Expanded(
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) => new Stack(
        children: <Widget>[
          new Container(
            width: 60,
            height: 60,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(
                        image: AssetImage("assests/image/photo.jpeg"),
                        fit: BoxFit.cover)),
          ),
          SizedBox(width: 70,)
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(16),
      child: stories,
      /*new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          stories,
        ],
      ),*/
    );
  }
}

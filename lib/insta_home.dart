import 'dart:ui';

import 'package:flutter/material.dart';

import 'insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: Colors.white,
    title: SizedBox(
      height: 30.0,
        child:  Image.asset("assests/image/logos.png",width: 150,height: 100,),
    ),
    actions: <Widget>[
      Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.add_box,
              size: 26.0,
              color: Colors.black,
            ),
          )
      ),
      Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
                Icons.send,
                color: Colors.black
            ),
          )
      ),
    ],

  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: topBar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon( Icons.home),
          onPressed: (){},
        ),
            new IconButton(
        icon: Icon( Icons.search),
            onPressed: (){},
          ),
            new IconButton(
            icon: Icon( Icons.receipt),
            onPressed: (){},
          ),
              new IconButton(
            icon: Icon( Icons.favorite),
            onPressed: (){},
          ),
              new IconButton(
            icon: Icon( Icons.account_box),
            onPressed: (){},
          ),
       ]
    ),
      ),
      ) );
  }
}

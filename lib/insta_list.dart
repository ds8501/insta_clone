import 'package:flutter/material.dart';
import 'package:insta_clone/insta_story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InstaList extends StatelessWidget {
  const InstaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index)=> index==0 ? new SizedBox(
          child: new InstaStories(),
          //height: MediaQuery.of(context).size.height*0.5,

        ): Column(
          mainAxisAlignment:MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 8, 16) ,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     new Container(
                       height: 40,
                       width: 40,
                       decoration: new BoxDecoration(
                         shape: BoxShape.circle,
                         image: new DecorationImage(
                             fit: BoxFit.fill,
                             image: AssetImage("assests/image/photo.jpeg"))
                       ),
                     ),
                     new SizedBox(
                     width:10.0
                     ),
                     Text("imp",
                     style: TextStyle(fontWeight: FontWeight.bold),),
                   ],
                 ),
                 new IconButton(onPressed: null, icon:Icon(Icons.more_vert))
               ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child:
                 new Image(image: AssetImage("assests/image/photo.jpeg"),
                 fit: BoxFit.cover,
                 ),
            ),
            Padding(padding:const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.heart,),
                 SizedBox( width: 15,),
                     Icon(FontAwesomeIcons.comment),
                 SizedBox(width: 15,),
                    Icon(FontAwesomeIcons.paperPlane),
                 SizedBox(width: 201, ),
                    Icon(FontAwesomeIcons.bookmark)
                  ],

                )
              ],
            )
            ),

          ],
        ),
    );
  }
}

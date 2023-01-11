import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/card_image.dart';
class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
         children: [
           CardImage("assets/img/torreon.jpg"),
           CardImage("assets/img/river.jpg"),
           CardImage("assets/img/mountain.jpg"),
           CardImage("assets/img/beach.jpg")
         ],
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/button_purple.dart';
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    final text_description = (Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Sofia",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    ));

    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611), //Colors.yellow,
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611), //Colors.yellow,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611), //Colors.yellow,
      ),
    );

    final title_stars =
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(
                  top: 320.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Text(
                  namePlace,
                  style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                )),
            Row(
              children: [star, star, star, star_half, star_border],
            ),
          ],
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        text_description,
        ButtonPurple("Navigate")
      ],
    );
  }
}

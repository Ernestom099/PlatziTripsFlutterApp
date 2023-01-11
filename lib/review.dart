import "package:flutter/material.dart";

class Review extends StatelessWidget {
  String pathImage = "assets/img/luisito.jpg";
  String userName = "Luis Ernesto";
  String details = "1 review 5 photos";
  String comment = "Super bueno";

  Review(this.pathImage, this.userName, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611), //Colors.yellow,
      ),
    );

    final user_name = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(userName,
          textAlign: TextAlign.left,
          style: TextStyle(fontFamily: "Sofia", fontSize: 17.0)),
    );

    final user_info = Row(children: [
      Container(
        margin: EdgeInsets.only(left: 20.0,right: 20.0),
        child: Text(details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Sofia", fontSize: 13.0, color: Color(0XFFa3a5a7))),
      ),
      star,
      star,
      star,
      star,
      star
    ]);

    final user_comments = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Sofia",
              fontSize: 13.0,
              fontWeight: FontWeight.w900)),
    );

    final user_details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [user_name, user_info, user_comments],
    );
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    return Row(children: [photo, user_details]);
  }
}

import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Review("assets/img/luisito.jpg", "Luis Ernesto", "1 review 5 photos",
            "Super bueno"),
        Review("assets/img/ratta.jpeg", "Ratta", "3 review 2 photos",
            "Esta bien chidee"),
        Review("assets/img/jorjais.jpg", "Jorjais", "5 review 1 photos",
            "Mas o menos")
      ],
    );
  }
}

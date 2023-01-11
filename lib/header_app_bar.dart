import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/gradient_back.dart';
import 'package:platzi_trips_flutter_app/card_image_list.dart';
class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }
  
}
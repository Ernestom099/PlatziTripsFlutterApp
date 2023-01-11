import 'dart:ffi';

import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isFavorite = false;

  void onPressedFav() {
    setState((){
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      tooltip: "Fav",
      onPressed: onPressedFav,
      child:Icon(_isFavorite?Icons.favorite:Icons.favorite_border),
    );
  }
}

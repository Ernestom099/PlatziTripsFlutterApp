import 'package:flutter/material.dart';
import 'package:platzi_trips_flutter_app/home_trips.dart';
import 'package:platzi_trips_flutter_app/search_trips.dart';
import 'package:platzi_trips_flutter_app/profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int tabIndex = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrip(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNav = Theme(
      data: Theme.of(context)
          .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
      child: BottomNavigationBar(
        onTap: onTapTapped,
        currentIndex: tabIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );

    return Scaffold(
      bottomNavigationBar: bottomNav,
      body: widgetsChildren[tabIndex],
    );
  }
}

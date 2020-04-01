import 'package:flutter/material.dart';

class Destination {
  const Destination(this.icon, this.title, this.index);
  final String title;
  final IconData icon;
  final int index;
}

const List<Destination> allDestinations = <Destination>[
  Destination(Icons.favorite,"Delivery",0),
  Destination(Icons.favorite_border, "Favorite",1),
  Destination(Icons.assignment, "History",2),
  Destination(Icons.video_library, "Videos",3),
];

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodfoodflutterapp/ui/routes/destination_view_routes.dart';
import 'package:goodfoodflutterapp/utils/destination.dart';

class HomePageRoute extends StatefulWidget {
  @override
  _HomePageRouteState createState() => _HomePageRouteState();
}

class _HomePageRouteState extends State<HomePageRoute> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.grey[200],
          backgroundColor: Colors.white,
          key: _bottomNavigationKey,
          items: allDestinations.map((Destination destination) {
            return _bottomNavigationBarItems(destination.icon,destination.title,destination.index);
          }).toList(),/*<Widget>[
            _bottomNavigationBarItems(Icons.favorite, "Delivery",0),
            _bottomNavigationBarItems(Icons.favorite_border, "Favorite",1),
            _bottomNavigationBarItems(Icons.assignment, "History",2),
            _bottomNavigationBarItems(Icons.video_library, "Videos",3),
            *//*Icon(Icons.favorite_border, size: 30),
            Icon(Icons.assignment, size: 30),*//*
          ],*/
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _page,
            children:allDestinations.map<Widget>((Destination destination) {
              return DestinationViewRoute(destination: destination);
            }).toList(),
          ),
        ),
    );
  }

  ///BottomNavigationBar Items
  Widget _bottomNavigationBarItems(IconData iconData,String name,int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          Icon(iconData, size: 30,color: Colors.grey[600],),
          Text(_page!=index?name:"",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),
        ],
      ),
    );
  }
}

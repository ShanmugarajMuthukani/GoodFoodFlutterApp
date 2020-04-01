import 'package:flutter/material.dart';
import 'package:goodfoodflutterapp/utils/destination.dart';

class FavoriteRoute extends StatefulWidget{
  const FavoriteRoute({ Key key, this.destination }) : super(key: key);

  final Destination destination;
  @override
  _FavoriteRouteState createState() => _FavoriteRouteState();
}

class _FavoriteRouteState extends State<FavoriteRoute>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Text("Favorite Route",style: TextStyle(color: Colors.red,fontSize: 20.0),),
      ),
    );
  }


}
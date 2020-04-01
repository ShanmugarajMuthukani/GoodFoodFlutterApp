import 'package:flutter/material.dart';
import 'package:goodfoodflutterapp/utils/destination.dart';

class VideosRoute extends StatefulWidget{
  const VideosRoute({ Key key, this.destination }) : super(key: key);

  final Destination destination;
  @override
  _VideosRouteState createState() => _VideosRouteState();
}

class _VideosRouteState extends State<VideosRoute>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/3");
          },
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:goodfoodflutterapp/utils/destination.dart';

class HistoryRoute extends StatefulWidget{
  const HistoryRoute({ Key key, this.destination }) : super(key: key);

  final Destination destination;
  @override
  _HistoryRouteState createState() => _HistoryRouteState();
}

class _HistoryRouteState extends State<HistoryRoute>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destination.title),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "2");
          },
        ),
      ),
    );
  }

}
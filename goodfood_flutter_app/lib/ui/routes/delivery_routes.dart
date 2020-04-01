import 'package:flutter/material.dart';
import 'package:goodfoodflutterapp/utils/destination.dart';

class DeliveryRoute extends StatefulWidget{
  const DeliveryRoute({ Key key, this.destination }) : super(key: key);

  final Destination destination;
  @override
  _DeliveryRouteState createState() => _DeliveryRouteState();
}

class _DeliveryRouteState extends State<DeliveryRoute>{

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
            Navigator.pushNamed(context, "/");
          },
        ),
      ),
    );
  }

}
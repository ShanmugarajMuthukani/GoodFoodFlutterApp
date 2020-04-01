import 'package:flutter/material.dart';
import 'package:goodfoodflutterapp/ui/routes/delivery_routes.dart';
import 'package:goodfoodflutterapp/ui/routes/favorite_routes.dart';
import 'package:goodfoodflutterapp/ui/routes/history_routes.dart';
import 'package:goodfoodflutterapp/ui/routes/videos_routes.dart';
import 'package:goodfoodflutterapp/utils/destination.dart';

class DestinationViewRoute extends StatefulWidget {
  const DestinationViewRoute({ Key key, this.destination }) : super(key: key);

  final Destination destination;

  @override
  _DestinationViewRouteState createState() => _DestinationViewRouteState();
}

class _DestinationViewRouteState extends State<DestinationViewRoute> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch(settings.name) {
              case '/':
                return DeliveryRoute(destination: widget.destination,);
              case '1':
                return FavoriteRoute(destination: widget.destination,);
              case '2':
                return HistoryRoute(destination: widget.destination,);
              case '3':
                return VideosRoute(destination: widget.destination,);
            }
          },
        );
      },
    );
  }
}
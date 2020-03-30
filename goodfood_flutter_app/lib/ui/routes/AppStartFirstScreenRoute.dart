import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

class AppStartFirstScreenRoute extends StatefulWidget {
  @override
  _AppStartFirstScreenRouteState createState() =>
      _AppStartFirstScreenRouteState();
}

class _AppStartFirstScreenRouteState extends State<AppStartFirstScreenRoute> {
  List<String> foodItems = List();
  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    setState(() {
      foodItems.add("1.png");
      foodItems.add("2.png");
      foodItems.add("3.png");
      foodItems.add("4.png");
      foodItems.add("5.png");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 1), () =>
        _controller.animateTo(_controller.position.maxScrollExtent));
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),

          ///Skip Icon
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ),

          ///Logo
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 70.0, left: 10.0, right: 10.0),
            child: SizedBox(width: 160,
                height: 100,
                child: Image.asset("assets/images/GoodFoodLogo.png")),
          ),


          /*///Marquee Food Items
          SizedBox(
            height: 180,
            child: Marquee(
                textDirection: TextDirection.ltr,
                directionMarguee: DirectionMarguee.TwoDirection,
                child: Container(height: 180,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Image.asset("assets/images/1.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Image.asset("assets/images/1.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Image.asset("assets/images/1.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: Image.asset("assets/images/1.png"),
                      )

                    ],
                  ),
                )),
          ),*/

          ///Food Items
          SizedBox(
            height: 180,
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: foodItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Image.asset("assets/images/${foodItems[index]}"),
                );
              },
            ),
          ),

          SizedBox(
            height: 90.0,
          ),

          ///Social Login's
          Column(
            children: <Widget>[
              _socialProfileLogin("faceBookIcon.png", "Continue with Facebook"),
              _socialProfileLogin("googleIcon.png", "Continue with Google"),
              _socialProfileLogin("emailIcon.png", "Continue with Email"),
            ],
          ),

          ///Terms of service
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
              child: Text("By continuing, you gree to our",
                style: TextStyle(color: Colors.grey, fontSize: 12.0),),
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Terms of Service",
                style: TextStyle(decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted,
                    color: Colors.grey,
                    fontSize: 12.0),),
              Container(width: 10.0,),
              Text("Privacy Policy",
                style: TextStyle(decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted,
                    color: Colors.grey,
                    fontSize: 12.0),),
              Container(width: 10.0,),
              Text("Content Policy",
                style: TextStyle(decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dotted,
                    color: Colors.grey,
                    fontSize: 12.0),),
            ],
          ),

          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _socialProfileLogin(String socialProfileImage, String content) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 6.0, left: 25.0, right: 25.0, bottom: 6.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(width: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(width: 30,
                  height: 30,
                  child: Image.asset("assets/images/$socialProfileImage")),
            ),
            Container(width: 15,),
            Text(
              content,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

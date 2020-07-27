

import 'package:flutter/material.dart';
import 'package:example/connect.dart';
import 'package:flutter/cupertino.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        body: new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/Collectors.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Align(
          alignment: Alignment(0, 0.6),
          child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Discover Glass Art\n",
                style: TextStyle(
                    fontFamily: "Lato Black",
                    color: Colors.white,
                    fontSize: 40),
              ))),
      Align(
          alignment: Alignment(0, 0.9),
          child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Purchase glass art quickly and securely. All purchases come with tracking data and are insured\n",
                style: TextStyle(
                    fontFamily: "Lato Light",
                    color: Colors.white,
                    fontSize: 14),
              ))),  
      Align(alignment: Alignment.center,
      child: GestureDetector(
          onHorizontalDragUpdate:  (DragUpdateDetails details) {
            
            if (details.delta.dx < -3.5){
                Navigator.of(context).push( CupertinoPageRoute( builder:((context) {
                return ConnectPage();
            }
            )));
            }
            else{
              if(details.delta.dx > 3.5){
                Navigator.of(context).pop();
              }
            }
          }
        )) 
    ]
    )
    );
    
  }
}
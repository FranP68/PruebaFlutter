
import 'package:flutter/material.dart';
import 'package:example/findLocal.dart';
import 'package:flutter/cupertino.dart';
class ConnectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        body: new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/Artists.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Align(
          alignment: Alignment(0, 0.6),
          child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Connect with Artists\n",
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
                "Connect directly with your favorite artists to follow them or securly purchase their work\n",
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
                return FindLocalPage();
            })));
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
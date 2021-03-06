import 'package:flutter/material.dart';
import 'package:example/getStarted.dart';
import 'package:flutter/cupertino.dart';
class ExploreTopBrandsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        body: new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/Companies.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Align(
          alignment: Alignment(0, 0.6),
          child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Explore Top Brands\n",
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
                "Explore your favorite brands and follow them to get the lastest updates on their products\n",
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
                return GetStartedPage();
            })));
            }
            else{
              if(details.delta.dx > 3.5){
                Navigator.of(context).pop();
              }
            }
          }
        )),
        Align(
          alignment: Alignment(0, 0.95),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.lens,
                    color: Colors.white24,
                    size: 10.0,
                  )),
              Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.lens,
                    color: Colors.white54,
                    size: 10.0,
                  )),
              Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.lens,
                    color: Colors.white54,
                    size: 10.0,
                  )),
              Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.lens,
                    color: Colors.white54,
                    size: 10.0,
                  )),
              Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.lens,
                    color: Colors.black87,
                    size: 10.0,
                  )),
                  Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    Icons.lens,
                    color: Colors.white24,
                    size: 10.0,
                  )),
            ],
          )) 
    ]
    )
    );
    
  }
}
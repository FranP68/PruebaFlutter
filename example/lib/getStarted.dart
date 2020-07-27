import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        body: new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/Login Or Register.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Align(
          alignment: Alignment(0, 0.5),
          child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Get Started             \n",
                style: TextStyle(
                    fontFamily: "Lato Black",
                    color: Colors.white,
                    fontSize: 40),
              ))),
      Align(
          alignment: Alignment(0, 0.7),
          child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Signup to get started. If you already have an account, please login. Still unsure? Feel free to continue as a guest and browse!\n",
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
        Align(alignment: Alignment(0, 0.75),
          child: RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            color: Colors.white,
            
            child: Text("                            SIGN UP                             ",
                    style: TextStyle(
                    fontFamily: "Lato Light",
                    color: Colors.black,
                    fontSize: 14),
                    ),
            onPressed: (){},
          )
        ), 
        Align(alignment: Alignment(0, 0.9),
          child: FlatButton(
            
            
            
            child: Text("I ALREADY HAVE AN ACCOUNT",
                    style: TextStyle(
                    fontFamily: "Lato Regular",
                    color: Colors.black,
                    fontSize: 14),),
            onPressed: (){},
          )
        ),
        Align(alignment: Alignment.topRight,
          child: Padding(padding: EdgeInsets.only(top: 30),
            child: FlatButton(         
                child: Text("CONTINUE AS GUEST",
                    style: TextStyle(
                    fontFamily: "Lato Regular",
                    color: Colors.white,
                    fontSize: 14),),
              onPressed: (){},
            ),
          )
        ),
    ]
    )
    );
    
  }
}
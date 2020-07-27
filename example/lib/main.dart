import 'package:flutter/material.dart';
import 'package:example/discover.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Prueba'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
        body: new Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/Welcome.png"),
            fit: BoxFit.cover,
          ),
        ),
        
      ),
      Align(
          alignment: Alignment(0, 0.6),
          child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Welcome to Glass Finder\n",
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
                "Glass Finder is a brand new way to buy and sell glass art. It's more than just app- it's a passionate community\n",
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
                return DiscoverPage();
            })));
            }
          }
        ))        
    ]
    )
    );
    
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuestWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(child: Text("Welcome Guest",style: TextStyle(
                    fontFamily: "Lato Light",
                    color: Colors.black,
                    fontSize: 40),
              )),
    );
  }
}
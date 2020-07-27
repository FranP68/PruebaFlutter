import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(child: Text("Success Login",style: TextStyle(
                    fontFamily: "Lato Light",
                    color: Colors.black,
                    fontSize: 40),
              )),
    );
  }
}
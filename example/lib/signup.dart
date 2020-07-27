import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(child: Text("Sign Up Form",style: TextStyle(
                    fontFamily: "Lato Light",
                    color: Colors.black,
                    fontSize: 40),
              )),
    );
  }
}

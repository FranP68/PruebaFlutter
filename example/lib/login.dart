import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:example/succeslogin.dart';
class LoginFormPage extends StatefulWidget {
  LoginFormPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

//globalkey
//email, password variable
//form
//textformfield
//submit

class _MyHomePageState extends State<LoginFormPage> {
  final formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment(0, -0.1),
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    
                      child: Image.asset(
                        "assets/logo.png",
                        width: 130,
                      ),
                    
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Login",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "Lato ",
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ]),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email:'),
                    validator: (input) =>
                        !input.contains('@') ? 'Not a valid Email' : null,
                    onSaved: (input) => _email = input,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password:'),
                    validator: (input) => input.length < 6
                        ? 'You need at least 6 characters'
                        : null,
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      color: Colors.lightBlue[300],
                      onPressed: _submit,
                      child: Text(
                        '                                        LOGIN                                        ',
                        style: TextStyle(
                            fontFamily: "Lato Light",
                            color: Colors.white,
                            fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _submit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).push( CupertinoPageRoute( builder:((context) {
                    return SuccessLoginPage();
                })));
    }
  }
}

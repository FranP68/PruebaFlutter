import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFormPage extends StatefulWidget {

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define una clase de estado correspondiente. Esta clase contendrá los datos
// relacionados con el formulario.
class MyCustomFormState extends State<LoginFormPage> {
  // Crea una clave global que identificará de manera única el widget Form 
  // y nos permita validar el formulario
  //
  // Nota: Esto es un `GlobalKey<FormState>`, no un GlobalKey<MyCustomFormState>! 
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Cree un widget Form usando el _formKey que creamos anteriormente
    return Form(
      key: _formKey,
      child: // Construiremos esto en los siguientes pasos!
    );
  }
}
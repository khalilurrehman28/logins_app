import 'package:flutter/material.dart';
import 'package:logins_app/src/screens/login_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Hello All",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: loginScreen(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class loginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginScreenState();
  }

}

class loginScreenState extends State<loginScreen>{

  final formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 10.0,right: 10.0),
      child: Form(
          key: formState,
          child:
        Column(
          children: <Widget>[
            emailFeild(),
            passwordFeild(),
            buttonFeild()
          ],
        )
      ),
    );
  }

  Widget emailFeild(){
    return TextFormField(
      validator: (String value){
        if(!value.contains("@")){
          return "Enter correct email";
        }
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter email"
      ),
    );
  }

  Widget passwordFeild(){
    return TextFormField(
      validator: (String value){
        if(value.length<6){
          return "password should be bigger than 6 char";
        }
      },
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter password",
      ),
    );
  }

  Widget buttonFeild(){
    return RaisedButton(
      child: Text("Submit"),
        color: Colors.blue,
        onPressed: (){
          //print();
            if(formState.currentState.validate()){
              Fluttertoast.showToast(
                  msg: "Welcome to login aoo",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white
            );
          }
    });
  }

}
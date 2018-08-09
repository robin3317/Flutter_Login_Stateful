import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            buttonField(),
          ],
        ),
      ),
    );
  }

  Widget emailField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "youremail@example.com",
        ),
      );
  Widget passwordField() => TextFormField(
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Password",
        ),
        obscureText: true,
      );
  Widget buttonField() => RaisedButton(
        onPressed: () {},
        child: Text("Submit"),
        color: Colors.blueAccent,
      );
}

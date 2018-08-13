import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Form(
        key: formKey,
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
        validator: (value) {
          if (!value.contains('@')) {
            return 'Please enter a valid email';
          }
        },
      );
  Widget passwordField() => TextFormField(
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Password",
        ),
        obscureText: true,
        validator: (value) {
          if (value.length < 4) {
            return 'Password must be greater 4 characters';
          }
        },
      );
  Widget buttonField() => RaisedButton(
        onPressed: () {
          formKey.currentState.validate();
        },
        child: Text("Submit"),
        color: Colors.blueAccent,
      );
}

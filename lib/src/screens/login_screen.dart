import 'package:flutter/material.dart';
import '../mixins/validate_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidateMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

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
        validator: validateEmail,
        onSaved: (value) {
          email = value;
        },
      );
  Widget passwordField() => TextFormField(
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Password",
        ),
        obscureText: true,
        validator: validatePassword,
        onSaved: (value) {
          password = value;
        },
      );
  Widget buttonField() => RaisedButton(
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            debugPrint('email: $email and password: $password');
          }
        },
        child: Text("Submit"),
        color: Colors.blueAccent,
      );
}

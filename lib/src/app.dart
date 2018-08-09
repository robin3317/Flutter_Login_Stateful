import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me In !',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Log Me In!"),
        // ),
        body: LoginScreen(),
      ),
    );
  }
}

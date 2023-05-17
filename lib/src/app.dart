import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_page.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log me in ',
      home: Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: LoginScreen()),
    );
  }
}


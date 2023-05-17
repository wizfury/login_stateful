import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formkey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
          key: formkey,
          child: Column(
            children: [
              emailfield(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              passwordfield(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              submitbutton()
            ],
          )),
    );
  }

  Widget emailfield() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: "Email", hintText: "you@example.com"),
      validator: validateEmail,
      onSaved: (value) {
        print(value);
      },
    );
  }

  Widget passwordfield() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(hintText: "*******", labelText: "Password"),
      validator: validatePassword,
      onSaved: (value) {
        print(value);
      },
    );
  }

  Widget submitbutton() {
    return ElevatedButton(
        onPressed: () {
          if (formkey.currentState!.validate()) {
            formkey.currentState!.save();
          }
        },
        child: Text("Submit"));
  }
}

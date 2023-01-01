import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:soar/shared/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          decoration: background,
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: Container(
            child: Form(
                child: Column(
              children: <Widget>[
                SizedBox(height: 100.0),
                Image(
                  image: AssetImage('assets/soar_logo_white.png'),
                  width: 400,
                  height: 120,
                  alignment: Alignment(0, 0.1),
                ),
                SizedBox(height: 10.0),
                Text(
                  'SOAR',
                  style: TextStyle(
                    fontSize: 70,
                    fontFamily: 'Prompt-ExtraBold',
                    //fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Email'),
                  validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(height: 10.0),
              ],
            )),
          )),
    ));
  }
}

//Password box
/*TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                validator: (val) => val!.length < 6
                    ? 'Enter a password 6+ characters long'
                    : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ), */

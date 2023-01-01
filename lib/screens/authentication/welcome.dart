// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:soar/screens/authentication/startpage.dart';
import 'package:soar/shared/constants.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: background,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Container(
                    //height: 50.0,
                    //width: 50.0,
                    child: Form(
                        child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                      SizedBox(height: 70),
                      Image(
                        image: AssetImage('assets/soar_logo_white.png'),
                        width: 400,
                        height: 120,
                        alignment: Alignment(0, 0.1),
                      ),
                      SizedBox(height: 1.0),
                      Text('SOAR',
                          style: TextStyle(
                              fontSize: 65,
                              fontFamily: 'Prompt-ExtraBold',
                              color: Colors.white,
                              height: 1.4)),
                      Text('Expert tutors at your fingertips',
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Prompt-Regular',
                              color: Colors.white,
                              height: 0.01)),
                      SizedBox(height: 25.0),
                      Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                          //color: Colors.black,
                          height: 480,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                )
                              ]),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        15.0, 10.0, 20.0, 10.0),
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.pink, width: 2.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    //textInputDecoration.copyWith(
                                    hintText: 'Email'),
                                validator: (val) =>
                                    val!.isEmpty ? 'Enter an email' : null,
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                              SizedBox(height: 15.0),
                              Container(
                                width: 500,
                                height: 47,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  // ignore: sort_child_properties_last
                                  child: Text('Continue',
                                      style: TextStyle(
                                        fontFamily: 'Prompt-Regular',
                                        fontSize: 15,
                                      )),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 123, 7),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Expanded(child: Divider(color: Colors.white)),
                                  Text('  or  ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Prompt-Regular',
                                        fontSize: 15,
                                      )),
                                  Expanded(child: Divider(color: Colors.white)),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                width: 500,
                                height: 47,
                                child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.facebook,
                                      color: Colors.blue,
                                    ),
                                    label: Text(
                                      'Continue with Facebook',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)))),
                              ),
                              SizedBox(height: 15.0),
                              Container(
                                width: 500,
                                height: 47,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        backgroundColor: Colors.white),
                                    onPressed: () {},
                                    child: Center(
                                      child: Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          SizedBox(width: 60),
                                          Image(
                                            image: AssetImage(
                                                'assets/google-icon.png'),
                                            height: 30,
                                            width: 30,
                                          ),
                                          Text(' Continue with Google',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Prompt-family'))
                                        ],
                                      ),
                                    )),
                              ),
                              SizedBox(height: 15.0),
                              Container(
                                width: 500,
                                height: 47,
                                child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.apple,
                                      color: Colors.black,
                                    ),
                                    label: Text(
                                      'Continue with Apple',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)))),
                              ),
                              SizedBox(height: 15.0),
                              Container(
                                  //alignment: Alignment.topLeft,
                                  child: Column(
                                children: [
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text("  Don't have an account? ",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Prompt-Regular')),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text('Sign up',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 210, 7),
                                                  fontFamily:
                                                      'Prompt-Regular')))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          style: TextButton.styleFrom(
                                              alignment: Alignment.topLeft),
                                          onPressed: () {},
                                          child: Text(
                                            'Forgot your password?',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 210, 7),
                                                fontFamily: 'Prompt-Regular'),
                                          )),
                                    ],
                                  )
                                ],
                              ))
                            ],
                          ))
                    ]))))));
  }
}

/*TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Email'),
                    validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },*/

/*Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                  'Forgot your password?',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 255, 201, 7),
                                                      fontFamily:
                                                          'Prompt-Regular'))),
                                        ],
                                      ) */
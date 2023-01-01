import 'package:flutter/material.dart';

const background = BoxDecoration(
    gradient: LinearGradient(
  colors: [Color.fromARGB(255, 255, 89, 0), Color.fromARGB(255, 255, 204, 0)],
));

const darker_background = BoxDecoration(color: Colors.black);

const textInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink, width: 2.0)));
    /*
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0)),
    focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 233, 226, 30), width: 1.0)));*/

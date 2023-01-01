import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:soar/screens/authentication/login.dart';
import 'package:soar/screens/authentication/startpage.dart';
import 'package:soar/screens/authentication/welcome.dart';
//import 'firebase_options.dart';
//import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wings Application',
      //theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Anton'),
      home: WelcomePage(),
      //debugShowCheckedModeBanner: false,
    );
  }
}

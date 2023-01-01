import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:soar/shared/constants.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: background,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 170),
            Image(
              image: AssetImage('assets/soar_logo_white.png'),
              width: 400,
              height: 120,
              alignment: Alignment(0, 0.1),
            ),
            SizedBox(height: 1.0),
            Text(
              'SOAR',
              style: TextStyle(
                fontSize: 70,
                fontFamily: 'Prompt-ExtraBold',
                //fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.4,
              ),
            ),
            Text('Expert tutors at your fingertips',
                style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Prompt-Regular',
                    color: Colors.white,
                    height: 0.01)),
            SizedBox(height: 50.0),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Color.fromARGB(255, 255, 132, 0);
                      }
                      return Colors.transparent;
                    }),
                    shadowColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.transparent)),
                onPressed: () {},
                child: Text(
                    '                         Sign In                         ',
                    style: TextStyle(color: Colors.white, fontSize: 14.0))),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.white),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Color.fromARGB(255, 255, 132, 0);
                      }
                      return Colors.transparent;
                    }),
                    shadowColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.transparent)),
                onPressed: () {},
                child: Text(
                    '                        Register                        ',
                    style: TextStyle(color: Colors.white, fontSize: 14.0)))
          ],
        ),
      )),
    );
  }
}
